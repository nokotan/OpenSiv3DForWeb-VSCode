import { readFileSync, writeFileSync } from "fs";
import { deflateSync } from "zlib";

/**
 * 
 * @param { string[] } files 
 */
function main(files) {
    for (const file of files) {
        const content = readFileSync(file);
        const compressedContent = deflateSync(content, { level: 9 });
        writeFileSync(`${file}.gzip`, compressedContent);
    }
}

main(process.argv.slice(2));
