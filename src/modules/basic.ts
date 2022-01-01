import { Message, GuildMember } from "discord.js";
import { CommonInhibitors, command, default as CookiecordClient, Module, optional } from "cookiecord";
import ChallengeModule from "./challenge";
import { developerAccessRoleId } from "../env";

export default class BasicModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    @command()
    async ping(msg: Message) {
        await msg.channel.send("pong. :ping_pong:");
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
            content += ` (timed out from <#${msg.channel.id}> for 2.5min)`;
        }
        await msg.channel.send(content);
    }
}
