import { Message, GuildMember, MessageButton, Interaction, Permissions, MessageActionRow, MessageButtonOptions, InteractionReplyOptions } from "discord.js";
import { CommonInhibitors, command, default as CookiecordClient, Module, listener } from "cookiecord";
import { developerAccessRoleId } from "../env";

export default class ChallengeModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
        setInterval(() => this.maybeGiveRoles(), 500);
    }
    userStates: Map<string, UserState> = new Map();
    DEFAULT_KEYPAD = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [0, 0, 0]];

    @command({ single: true, inhibitors: [CommonInhibitors.hasGuildPermission([Permissions.FLAGS.MANAGE_GUILD])] })
    async createBtnMessage(msg: Message, content: string) {
        await msg.channel.send({
            content,
            components: [
                new MessageActionRow({
                    components: [
                        new MessageButton({
                            customId: "startChallenge",
                            style: "PRIMARY",
                            label: "Get write access for the development channels",
                            emoji: "\ud83d\udc49"
                        })
                    ]
                })
            ]
        });
    }

    @listener({ event: "interactionCreate" })
    async onButtonPress(intr: Interaction) {
        if (!intr.isButton() || !intr.member || !intr.guild) return;
        let state = this.userStates.get(intr.user.id);

        const roles = Array.isArray(intr.member.roles)
            ? intr.member.roles
            : [...intr.member.roles.cache.mapValues(r => r.id).values()]

        if (roles.includes(developerAccessRoleId)) {
            await intr.reply({
                content: "You already have access \:)",
                ephemeral: true
            })
            return;
        }

        if (!state) {
            state = {
                giveAt: Date.now() + 1000 * 60 * 5,
                timeSkipCode: Math.floor(Math.random() * (999999 - 100000) + 100000).toString(),
                timeSkipState: "",
                timeSkipDone: false,
                keypadNumbers: this.DEFAULT_KEYPAD,
                member: await intr.guild.members.fetch(intr.user.id),
                roleGave: false
            }
        }

        function makeReply(state: UserState): InteractionReplyOptions {
            function makeKeypadGridWith(options: Partial<MessageButtonOptions>): MessageActionRow[] {
                return state.keypadNumbers
                    .map(array =>
                        new MessageActionRow({
                            components:
                                array.map(num => new MessageButton(<MessageButtonOptions>Object.assign({
                                    label: num.toString(),
                                    customId: `challengeKeypad:${num}:${Math.random()/* junk so it's unique */}`,
                                    style: "SECONDARY"
                                }, options)))
                        }))
            }

            return {
                ephemeral: true,
                content: `:wave: Hey! You'll get access <t:${~~(state.giveAt / 1000)}:R>.
If you want to get it immediately you can enter this number: \`${state.timeSkipCode}\` (you can start over if you mess up)`,
                components: makeKeypadGridWith(state.giveAt <= Date.now() ? {
                    style: state.timeSkipDone
                        ? "SUCCESS"
                        : "SECONDARY", disabled: true
                } : {})
            }
        }

        if (intr.customId == "startChallenge") {
            await intr.reply(makeReply(state));
        } else if (intr.customId.startsWith("challengeKeypad:") && !state.timeSkipDone) {
            state.timeSkipState += intr.customId.split(":")[1];
            if (state.timeSkipState.substr(-6) == state.timeSkipCode) {
                state.giveAt = Date.now();
                state.timeSkipDone = true;
            } else {
                const pool = "123456789000".split("").sort(() => Math.random() - 0.5);
                state.keypadNumbers =
                    state.keypadNumbers.map((array, i) => array.map((_, j) => +pool[i * 3 + j]));
            }
        }

        if (intr.customId !== "startChallenge") intr.update(makeReply(state));

        this.userStates.set(intr.user.id, state);
    }

    async maybeGiveRoles() {
        for (const [id, state] of this.userStates.entries()) {
            if (state.giveAt < Date.now() && !state.roleGave) {
                state.member.roles.add(developerAccessRoleId);
                state.roleGave = true;
            }
            this.userStates.set(id, state);
        }
    }
}

interface UserState {
    timeSkipCode: string;
    timeSkipState: string;
    timeSkipDone: boolean
    giveAt: number; // unix time
    keypadNumbers: number[][];
    member: GuildMember;
    roleGave: boolean;
};
