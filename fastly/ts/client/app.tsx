import * as React from "react";
import { FontIncrease24Regular, FontDecrease24Regular, TextFont24Regular, MoreHorizontal24Filled, GridDotsFilled, HomeFilled } from "@fluentui/react-icons";
import { Toolbar, ToolbarButton, ToolbarDivider, Menu, MenuTrigger, MenuPopover, MenuList, MenuItem, MenuItemLink, Title2, MenuButton, TabList, Tab, Persona, makeStyles, ToolbarGroup, } from "@fluentui/react-components";
import type { ToolbarProps } from "@fluentui/react-components";
import { GitHubLogoIcon } from "@fluentui/react-icons-mdl2";

const useStyles = makeStyles({
    toolbar: {
        justifyContent: "space-between",
    },
    title2: {
        verticalAlign: 'middle',
        fontWeight: "bold"
    },
});

export const App = (props: Partial<ToolbarProps>) => {

    const farGroupStyles = useStyles();
    return <>
        <Toolbar aria-label="Default" {...props} className={farGroupStyles.toolbar}>
            <ToolbarGroup role="presentation" >
                <ToolbarButton aria-label="Increase Font Size" icon={<GridDotsFilled />} />
                <ToolbarDivider style={{ display: "inline-flex" }} />
                <Title2 className={farGroupStyles.title2}>Edge Computing</Title2>
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
        <TabList defaultSelectedValue="tab1" vertical size="large">
            <Tab value="tab1" title="Home" icon={<HomeFilled />}></Tab>
            <Tab value="tab2" icon={<FontIncrease24Regular />}></Tab>
            <Tab value="tab3" icon={<MoreHorizontal24Filled />}></Tab>
            <Tab value="tab4" icon={<GridDotsFilled />}></Tab>
        </TabList>
    </>;
}