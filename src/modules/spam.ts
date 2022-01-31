import { Message } from "discord.js";
import { default as CookiecordClient, listener, Module } from "cookiecord";
import { URL } from "url";
import { default as fetch } from "node-fetch";
import { phishermanApiKey } from "../env";
import { hostname } from "os";

export default class SpamModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    private async phishermanFetch(method: "GET" | "PUT", url: string, json?: object) {
        const resp = await fetch(`https://api.phisherman.gg/v2${url}`, {
            method,
            headers: {
                Authorization: `Bearer ${phishermanApiKey}`,
                "Content-Type": "application/json",
                "User-Agent": `alvr-bot (https://github.com/alvr-org/alvr-bot, ${hostname()}.ckie.dev, contact 142244934139904000)`
            },
            body: json ? JSON.stringify(json) : undefined
        });

        if (!resp.ok) throw new Error(`network error: ${resp.status} ${await resp.text()}`);

        return await resp.json();
    }

    @listener({ event: "messageCreate" })
    async onMessage(msg: Message) {
        if (!msg.guild || !msg.member || msg.author.bot) return;

        const URL_REGEX = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()!@:%_\+.~#?&\/\/=]*)/g;
        const DISCORD_HOSTS = ["discord.com", "discordapp.com", "discord.gg", "discord.gift"];
        const MAYBE_SCAM_REGEX = /nitro|nitro.*steam|steam.*nitro|discord.+nitro/gi;
        const urls = (msg.content.match(URL_REGEX) || []).map(raw => new URL(raw));
        let hasScam = false;

        const scamPredictors: ((url: URL) => Promise<boolean>)[] = [
            // (async url => MAYBE_SCAM_REGEX.test(msg.content) && !(DISCORD_HOSTS.some(h => url.host.endsWith(`.${h}`)) || DISCORD_HOSTS.includes(url.host))),
            (async url => {
                const phishermanResp = await this.phishermanFetch("GET", `/domains/check/${url.host}`);
                if (!(phishermanResp && typeof phishermanResp == "object")) return false;
                return (<{ classification?: string }>phishermanResp).classification == "malicious";
            })
        ];

        for (const url of urls) {
            const results = await Promise.all(scamPredictors.map(fn => fn(url)));
            if (results.filter(v => v).length > 0) {
                hasScam = true;
                if (msg.deletable) await msg.delete();
                else console.warn(`could not delete spam message from channel ${msg.channel.id}`);
                // if phisherman didn't catch this one
                if (!results[1]) {
                    try {
                        await this.phishermanFetch("PUT", `/phish/report`, { url: url.toString() });
                    } catch (err) {
                        if (!`${err}`.includes("Domain already exists")) throw err;
                    }
                }
            }
        }

        if (hasScam && msg.member.bannable) await msg.member.ban({ reason: "alvr-bot spam" });
    }
}
