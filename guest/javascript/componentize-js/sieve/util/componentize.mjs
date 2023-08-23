import { metadataShow } from '@bytecodealliance/jco';
import { componentize } from '@bytecodealliance/componentize-js';
import { readFile, writeFile } from 'node:fs/promises';

const jsSource = await readFile('./src/index.js', 'utf8');
const witSource = await readFile('../../../edge.wit', 'utf8');

const { component } = await componentize(jsSource, witSource);

const outFolder = "../../../../build/guest/javascript/componentize-js/sieve";
await writeFile(`${outFolder}/sieve.component.wasm`, component);

const meta = await metadataShow(component);
meta.slice(1, -1).forEach(({ range: [start, end] }, i) => {
    writeFile(`${outFolder}/sieve.core${i === 0 ? "" : i}.wasm`, component.slice(start, end));
});
