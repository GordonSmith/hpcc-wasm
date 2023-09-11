import * as React from "react";
import { MoreHorizontal24Filled, GridDotsFilled, HomeFilled } from "@fluentui/react-icons";
import { Toolbar, ToolbarButton, ToolbarDivider, Menu, MenuTrigger, MenuPopover, MenuList, MenuItem, MenuItemLink, Title2, MenuButton, TabList, Tab, Persona, makeStyles, ToolbarGroup, shorthands, LargeTitle, makeStaticStyles, } from "@fluentui/react-components";
import type { SelectTabData, SelectTabEvent, TabValue, ToolbarProps } from "@fluentui/react-components";
import { GitHubLogoIcon } from "@fluentui/react-icons-mdl2";
import { Observable } from "./observable";

const Placeholder = React.memo(() => (
    <div>
        <LargeTitle>...placeholder...</LargeTitle>
        <br></br>
        <Title2>This site will go live on or before 29 Sept 2023</Title2>
    </div>
));

const useStaticStyles = makeStaticStyles({
    body: {
        overflow: "hidden",
        margin: "8px"
    }
});

const useClasses = makeStyles({
    toolbar: {
        justifyContent: "space-between",
    },
    toolbarTitle: {
        verticalAlign: 'middle',
        fontWeight: "bold"
    },
    container: {
        display: "grid",
        gridTemplateColumns: "minmax(min-content, auto) 3fr minmax(min-content, auto)",
        gridTemplateRows: "auto 1fr auto",
        gridTemplateAreas: `
            "header header header"
            "left main right"
            "footer footer footer"
        `,
        height: "calc(100vh - 16px)",
        alignContent: "start"
    },
    header: {
        ...shorthands.gridArea("header")
    },
    left: {
        ...shorthands.gridArea("left")
    },
    main: {
        ...shorthands.gridArea("main"),
        overflowY: "auto",
        marginLeft: "16px",
        marginTop: "16px"
    },
    right: {
        ...shorthands.gridArea("right")
    },
    footer: {
        ...shorthands.gridArea("footer")
    }
});

export const App = (props: Partial<ToolbarProps>) => {

    useStaticStyles();
    const [selectedValue, setSelectedValue] = React.useState<TabValue>("home");

    const onTabSelect = (event: SelectTabEvent, data: SelectTabData) => {
        setSelectedValue(data.value);
    };

    const classes = useClasses();

    return <div className={classes.container}>
        <header className={classes.header}>
            <Toolbar aria-label="Default" {...props} className={classes.toolbar}>
                <ToolbarGroup role="presentation" >
                    <ToolbarButton aria-label="Increase Font Size" icon={<GridDotsFilled />} />
                    <ToolbarDivider style={{ display: "inline-flex" }} />
                    <Title2 className={classes.toolbarTitle}>Edge Computing</Title2>
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
        </header>
        <nav className={classes.left}>
            <TabList defaultSelectedValue="home" selectedValue={selectedValue} onTabSelect={onTabSelect} vertical size="large" >
                <Tab value="home" title="Home" icon={<HomeFilled />}>Home</Tab>
                <Tab value="ojs" icon={<MoreHorizontal24Filled />}>XXX</Tab>
                <Tab value="tab4" icon={<GridDotsFilled />}>YYY</Tab>
            </TabList>
        </nav>
        <main className={classes.main}>
            <div>
                {selectedValue === "home" && <Placeholder />}
                {selectedValue === "ojs" && <Observable />}
            </div>
        </main>
        <nav className={classes.right}>
        </nav>
        <div className={classes.footer}>...footer...</div>
    </div>;
}
