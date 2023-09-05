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

const useStyles = makeStyles({
    toolbar: {
        justifyContent: "space-between",
    },
    title: {
        verticalAlign: 'middle',
        fontWeight: "bold"
    },
    main: {
        display: 'flex',
        flexDirection: 'row',
        flexWrap: 'nowrap',
        width: 'auto',
        height: 'auto',
        boxSizing: 'border-box',
        '> *': {
            textOverflow: 'ellipsis',
        },
        '> :not(:first-child)': {
            marginTop: '0px',
        },
        '> *:not(.ms-StackItem)': {
            flexShrink: 1,
        },
    },
    panels: {
        ...shorthands.padding(0, "10px"),
        "& th": {
            textAlign: "left",
            ...shorthands.padding(0, "30px", 0, 0),
        },
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
                <Title2 className={styles.title}>Edge Computing</Title2>
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
        <div className={styles.main}>
            <TabList defaultSelectedValue="tab1" selectedValue={selectedValue} onTabSelect={onTabSelect} vertical size="large">
                <Tab value="tab1" title="Home" icon={<HomeFilled />}></Tab>
                {/* <Tab value="tab2" icon={<FontIncrease24Regular />}></Tab>
            <Tab value="tab3" icon={<MoreHorizontal24Filled />}></Tab>
            <Tab value="tab4" icon={<GridDotsFilled />}></Tab> */}
            </TabList>
            <div className={styles.panels}>
                {selectedValue === "tab1" && <Placeholder />}
            </div>
        </div>
    </>;
}