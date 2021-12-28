import CookiecordClient from "cookiecord";
import BasicModule from "./modules/basic";
import { botAdmins, token } from "./env";
import ChallengeModule from "./modules/challenge";

const client = new CookiecordClient({
  botAdmins,
  prefix: "al "
});

if (process.env.LIVE_RELOAD) {
  client.loadModulesFromFolder("src/modules");
  client.reloadModulesFromFolder("src/modules");
} else {
  client.registerModule(BasicModule);
  client.registerModule(ChallengeModule);
}

client.login(token);
client.on("ready", () => console.log(`Logged in as ${client.user?.tag}`));
