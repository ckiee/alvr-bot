import { Message } from "discord.js";
import { CommonInhibitors, command, default as CookiecordClient, Module } from "cookiecord";
import { readFile } from "fs/promises";
import { join } from "path";

interface E621Face {
    e621id: number;
    feature: "face";
    index: number;
    confidence: number;
    xmin: number;
    ymin: number;
    xmax: number;
    ymax: number;
    file_url: string;
    rating: number;
    score: number;
    file_size: number;
    tags: string;
    artist: string;
    copyrights: string;
    characters: string;
    species: string;
}

const plsFaces = (async () => {
    const lines = (await readFile(join(__dirname, "..", "resources", "e621-faces.csv"))).toString("utf-8").split("\n");

    return lines.slice(1).map(l => l.split(",")).map(([e621id,
        feature,
        index,
        confidence,
        xmin,
        ymin,
        xmax,
        ymax,
        file_url,
        rating,
        score,
        file_size,
        tags,
        artist,
        copyrights,
        characters,
        species]) => <E621Face>{
            e621id: parseInt(e621id),
            feature,
            index: parseInt(index),
            confidence: parseInt(confidence),
            xmin: parseInt(xmin),
            ymin: parseInt(ymin),
            xmax: parseInt(xmax),
            ymax: parseInt(ymax),
            file_url,
            rating: parseInt(rating),
            score: parseInt(score),
            file_size: parseInt(file_size),
            tags,
            artist,
            copyrights,
            characters,
            species
        })
})();

export default class FurryModule extends Module {
    constructor(client: CookiecordClient) {
        super(client);
    }

    @command({ inhibitors: [CommonInhibitors.userCooldown(3.6e+6 /*1 hour*/)] })
    async furry(msg: Message) {
        const faces = await plsFaces;
        const random = faces[Math.floor(Math.random() * faces.length)];
        await msg.channel.send(random.file_url);
    }
}
