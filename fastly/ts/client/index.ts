import { compile, ohq, omd2notebook, download } from "@hpcc-js/observablehq-compiler";
import { Library, Runtime, Inspector } from "@observablehq/runtime";

import "@hpcc-js/observablehq-compiler/dist/index.esm.css";

export async function renderNotebook(nb: ohq.Notebook, placeholder: HTMLDivElement): Promise<void> {
    // placeholder.style.border = "1px solid darkGray"
    placeholder.style.padding = "4px";

    const library = new Library();
    const runtime = new Runtime(library);
    const nbCompiled = await compile(nb);
    nbCompiled(runtime, name => {
        const div = document.createElement('div');
        placeholder.appendChild(div);
        return new Inspector(div);
    });
}

export async function renderMarkdown(md: string, placeholder: HTMLDivElement): Promise<void> {
    const nb = omd2notebook(md);
    return renderNotebook(nb, placeholder);
}

export async function renderUrl(url: string, placeholder: HTMLDivElement): Promise<void> {
    const nb = await download(url);
    return renderNotebook(nb, placeholder);
}
