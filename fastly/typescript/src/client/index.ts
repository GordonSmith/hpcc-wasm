import { Library, Runtime, Inspector } from "@observablehq/runtime";
import { compile, download, ohq, ojs2notebook } from "@hpcc-js/observablehq-compiler";

import "@hpcc-js/observablehq-compiler/dist/index.esm.css";

const ojs = `
42;
a = 1
b = 2
c = a + b
d = {
  yield 1;
  yield 2;
  yield 3;
}

viewof e = {
  let output = {};
  let listeners = [];
  output.value = 10;
  output.addEventListener = (listener) => listeners.push(listener);;
  output.removeEventListener = (listener) => {
    listeners = listeners.filter(l => l !== listener);
  };
  return output;
}

tenTimes = {
  for (let i = 0; i < 10; i++) {
    yield Promises.delay(100);
  }
}

f = {
  tenTimes;
  return (this || 0) + 1;
}
`;

export async function main(placeholder: HTMLDivElement) {
    const notebook = ojs2notebook(ojs);
    const define = await compile(notebook);

    const library = new Library();
    const runtime = new Runtime(library);
    const main: ohq.Module = define(runtime, name => {
        if (placeholder) {
            const div = document.createElement("div");
            placeholder.appendChild(div);
            return new Inspector(div);
        }
        return {
            pending() { },
            fulfilled(value) { console.info("fulfilled", name, value); },
            rejected(error) { console.error("rejected", name, error); },
        };
    });
    return main;
}
