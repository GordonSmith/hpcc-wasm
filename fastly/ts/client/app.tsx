import * as React from "react";
import { MoreHorizontal24Filled, GridDotsFilled, HomeFilled } from "@fluentui/react-icons";
import { Toolbar, ToolbarButton, ToolbarDivider, Menu, MenuTrigger, MenuPopover, MenuList, MenuItem, MenuItemLink, Title2, MenuButton, TabList, Tab, Persona, makeStyles, ToolbarGroup, shorthands, LargeTitle, } from "@fluentui/react-components";
import type { SelectTabData, SelectTabEvent, TabValue, ToolbarProps } from "@fluentui/react-components";
import { GitHubLogoIcon } from "@fluentui/react-icons-mdl2";

const Placeholder = React.memo(() => (
    <div>
        <LargeTitle>...placeholder...</LargeTitle>
        <br></br>
        <Title2>This site will go live on or before 29 Sept 2023</Title2>
    </div>
));

// const useStyles = makeStyles({
//     toolbar: {
//         justifyContent: "space-between",
//     },
//     title: {
//         verticalAlign: 'middle',
//         fontWeight: "bold"
//     },
//     main: {
//         display: 'flex',
//         flexDirection: 'row',
//         flexWrap: 'nowrap',
//         width: 'auto',
//         height: 'auto',
//         boxSizing: 'border-box',
//         '> *': {
//             textOverflow: 'ellipsis',
//         },
//         '> :not(:first-child)': {
//             marginTop: '0px',
//         },
//         '> *:not(.ms-StackItem)': {
//             flexShrink: 1,
//         },
//     },
//     panels: {
//         ...shorthands.padding(0, "10px"),
//         "& th": {
//             textAlign: "left",
//             ...shorthands.padding(0, "30px", 0, 0),
//         },
//     },
// });

export const useStyles = makeStyles({
    toolbar: {
        justifyContent: "space-between",
    },
    toolbarTitle: {
        verticalAlign: 'middle',
        fontWeight: "bold"
    },
    root: {
        display: 'grid',
        gridTemplateColumns: '250px auto',
        gridTemplateRows: '40px auto',
        minHeight: '100vh',
    },
    nav: {
        gridColumnStart: 1,
        gridColumnEnd: 3,
    },
    sidebar: {
        gridRowStart: 1,
        gridRowEnd: 2,
        gridColumnStart: 1,
        gridColumnEnd: 2,
    },
    content: {
        gridRowStart: 2,
        gridRowEnd: 3,
        gridColumnStart: 2,
        gridColumnEnd: 3,
    },
});


export const App = (props: Partial<ToolbarProps>) => {

    const [selectedValue, setSelectedValue] = React.useState<TabValue>("tab1");

    const onTabSelect = (event: SelectTabEvent, data: SelectTabData) => {
        setSelectedValue(data.value);
    };

    const styles = useStyles();

    return <>
        <Toolbar aria-label="Default" {...props} className={styles.toolbar}>
            <ToolbarGroup role="presentation" >
                <ToolbarButton aria-label="Increase Font Size" icon={<GridDotsFilled />} />
                <ToolbarDivider style={{ display: "inline-flex" }} />
                <Title2 className={styles.toolbarTitle}>Edge Computing</Title2>
                {/* <ToolbarDivider style={{ display: "inline-flex" }} /> */}
            </ToolbarGroup>
            <ToolbarGroup role="presentation">
                <ToolbarButton as="a" href="https://github.com/GordonSmith/hpcc-wasm" target="_blank" icon={<GitHubLogoIcon />} />
                <ToolbarDivider style={{ display: "inline-flex" }} />
                <Menu>
                    <MenuTrigger>
                        <ToolbarButton aria-label="More" icon={<MoreHorizontal24Filled />} />
                    </MenuTrigger>

                    <MenuPopover >
                        <MenuList>
                            <MenuItemLink href="https://github.com/microsoft/fluentui" target="_blank">FluentUI:  GitHub</MenuItemLink>
                            <MenuItemLink href="https://react.fluentui.dev/?path=/docs/concepts-introduction--page" target="_blank">FluentUI:  Docs</MenuItemLink>
                            <MenuItem>New </MenuItem>
                            <MenuItem>New Window</MenuItem>
                            <MenuItem disabled>Open File</MenuItem>
                            <MenuItem>Open Folder</MenuItem>
                        </MenuList>
                    </MenuPopover>
                </Menu>
            </ToolbarGroup>
        </Toolbar>
        <div className={styles.root}>
            <TabList defaultSelectedValue="tab1" selectedValue={selectedValue} onTabSelect={onTabSelect} vertical size="large" className={styles.sidebar}>
                <Tab value="tab1" title="Home" icon={<HomeFilled />}>Home</Tab>
                <Tab value="tab3" icon={<MoreHorizontal24Filled />}>XXX</Tab>
                <Tab value="tab4" icon={<GridDotsFilled />}>YYY</Tab>
            </TabList>
            <div className={styles.content}>
                {selectedValue === "tab1" && <Placeholder />}
            </div>
        </div>
    </>;
}