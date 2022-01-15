import dotenv from "dotenv-safe";
dotenv.config();

export const token = process.env.TOKEN!;
export const botAdmins = process.env.BOT_ADMINS!.split(",");
export const developerAccessRoleId = process.env.DEV_ACCESS_ROLE!;
export const phishermanApiKey = process.env.PHISHERMAN_API_KEY!;
