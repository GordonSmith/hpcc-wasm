import { metadataShow } from '@bytecodealliance/jco';
import { componentize } from '@bytecodealliance/componentize-js';
import { readFile, writeFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';

const jsSource = await readFile('./src/index.js', 'utf8');
const witSource = await readFile('wit/test.wit', 'utf8');

const { component } = await componentize(jsSource, {
    witPath: fileURLToPath(new URL('../wit', import.meta.url)),
    worldName: 'test',
    enableStdout: true
});

const outFolder = "dist";
await writeFile(`${outFolder}/test.component.wasm`, component);

console.log("xxxz");
const meta = await metadataShow(component);
console.log("yuy");
// for (const item of meta) {
const item = meta[1];
console.log("ascascasc");
writeFile(`${outFolder}/test${item.metaType.tag === "component" ? "" : `.${item.metaType.tag}`}.wasm`, component.slice(item.range[0], item.range[1]));
// }
// meta.slice(1, -1).forEach(({ range: [start, end] }, i) => {
//     console.log("ascascasc");
//     writeFile(`${outFolder}/test.core${i === 0 ? "" : i}.wasm`, component.slice(start, end));
// });
