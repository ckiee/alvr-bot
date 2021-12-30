import { Message } from "discord.js";
import { default as CookiecordClient, listener, Module } from "cookiecord";
import { URL } from "url";

export default class SpamModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    @listener({ event: "messageCreate" })
    async onMessage(msg: Message) {
        if (!msg.guild || !msg.member) return;

        const URL_REGEX = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()!@:%_\+.~#?&\/\/=]*)/g;
        const DISCORD_HOSTS = ["discord.com", "discordapp.com", "discord.gg", "discord.gift"];
        const MAYBE_SCAM_REGEX = /nitro|nitro.*steam|steam.*nitro|discord.+nitro/gi;
        const urls = (msg.content.match(URL_REGEX) || []).map(raw => new URL(raw));
        let hasScam = false;

        if (MAYBE_SCAM_REGEX.test(msg.content)) {
            for (const url of urls) {
                if (!(DISCORD_HOSTS.includes(url.host) || DISCORD_HOSTS.some(h => url.host.endsWith(`.${h}`)))) {
                    if (msg.deletable) msg.delete();
                    else console.warn(`could not delete spam message from channel ${msg.channel.id}`)
                    hasScam = true;
                }
            }
        }

        if (hasScam && msg.member.bannable) msg.member.ban({reason: "alvr-bot spam"});
    }
}
