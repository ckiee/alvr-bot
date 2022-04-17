import { Message, GuildMember } from "discord.js";
import { CommonInhibitors, command, default as CookiecordClient, Module, optional } from "cookiecord";
import ChallengeModule from "./challenge";
import { developerAccessRoleId } from "../env";
import { inspect } from "util";

export default class BasicModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    @command()
    async ping(msg: Message) {
        await msg.channel.send("pong. :ping_pong:");
    }
    
    @command()
    async contempt(msg: Message) {
        await msg.channel.send("Please read this: https://blog.aurynn.com/2015/12/16-contempt-culture/");
    }
    
    @command()
    async rms(msg: Message) {
        await msg.channel.send("RMS bad (https://rms-open-letter.github.io/)");
    }

    @command({ inhibitors: [CommonInhibitors.guildsOnly, CommonInhibitors.userCooldown(10000)] })
    async nothelp(msg: Message, @optional member?: GuildMember) {
        if (!msg.member) return;
        const challengeModule = [...this.client.modules].filter(m => m instanceof ChallengeModule)[0] as ChallengeModule;
        let content = "this isn't a help channel! please go to <#720639114705240135> or <#721675451969306655> when not discussing ALVR development.";
        if (member && msg.member.permissions.has("MANAGE_MESSAGES")) {
            await member.roles.remove(developerAccessRoleId);
            challengeModule.userStates.set(member.id, {
                giveAt: Date.now() + 1000 * 60 * 2.5,
                keypadNumbers: challengeModule.DEFAULT_KEYPAD,
                roleGave: false,
                timeSkipDone: true,
                timeSkipCode: "disabled",
                timeSkipState: "",
                member
            });
            content += ` (timed out from dev channels for 2.5min)`;
        }
        await msg.channel.send(content);
    }

    @command({
        description: "eval some js",
        single: true,
        inhibitors: [CommonInhibitors.botAdminsOnly]
    })
    async eval(msg: Message, js: string) {
        console.warn(`${msg.author.tag} ${msg.author.id}: EVAL: ${js}`);
        try {
            let result = eval(js);
            if (result instanceof Promise) result = await result;
            if (typeof result != `string`) result = inspect(result);
            if (result.length > 1990)
                return await msg.channel.send(
                    `Message is over the discord message limit.`
                );
            await msg.channel.send(
                "```js\n" +
                result
                    .split(this.client.token)
                    .join("[TOKEN]")
                    .split("```")
                    .join("\\`\\`\\`") +
                "\n```"
            );
        } catch (error: unknown) {
            msg.channel.send(
                `error! ${error}`
                    .toString()
                    .split(this.client.token || "this is literally impossible.. probably.")
                    .join("[TOKEN]")
            );
        }
    }
}
