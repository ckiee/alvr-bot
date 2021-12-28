import { Message, GuildMember } from "discord.js";
import { CommonInhibitors, command, default as CookiecordClient, Module } from "cookiecord";

export default class BasicModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    @command()
    async ping(msg: Message) {
        await msg.channel.send("pong. :ping_pong:");
    }
}
