import React from "react";
import { Skeleton, SkeletonItem, makeStyles } from "@fluentui/react-components";
import { useConst, useForceUpdate } from "@fluentui/react-hooks"
import { Library, Runtime, Inspector } from "@observablehq/runtime";
import { compile, compileFunc, download, } from "@hpcc-js/observablehq-compiler";

import "@hpcc-js/observablehq-compiler/dist/index.esm.css";

export const useStyles = makeStyles({
    root: {
    },
});

export interface ObservableProps {
}

export const Observable: React.FunctionComponent<ObservableProps> = ({
}) => {
    const placeholder = React.useRef<HTMLDivElement>(null);
    const library = useConst(new Library());
    const runtime = useConst(new Runtime(library));
    const [notebook, setNotebook] = React.useState<{ notebook?: compileFunc }>({ notebook: undefined });
    const forceUpdate = useForceUpdate();

    React.useEffect(() => {
        download("https://observablehq.com/@observablehq/summary-table")
            .then(ohqnb => {
                return compile(ohqnb);
            }).then(compiledNB => {
                setNotebook({ notebook: compiledNB });
            }).catch(e => {
                console.error(e.message);
            });
    }, []);

    React.useEffect(() => {
        if (notebook.notebook) {
            notebook.notebook(runtime, name => {
                const div = document.createElement("div");
                placeholder.current!.appendChild(div);
                return new Inspector(div);
            });
        }
        forceUpdate();
    }, [notebook]);

    const styles = useStyles();

    return <div>
        <div ref={placeholder} className={styles.root}>
            {notebook.notebook === undefined ? <Skeleton>
                <SkeletonItem />
                <SkeletonItem />
                <SkeletonItem />
                <SkeletonItem />
                <SkeletonItem />
                <SkeletonItem />
                <SkeletonItem />
            </Skeleton> : undefined}
        </div>
    </div>;
}
