import * as React from "react";
import { FontIncrease24Regular, FontDecrease24Regular, TextFont24Regular, MoreHorizontal24Filled, GridDotsFilled, HomeFilled } from "@fluentui/react-icons";
import { Toolbar, ToolbarButton, ToolbarDivider, Menu, MenuTrigger, MenuPopover, MenuList, MenuItem, MenuItemLink, Title2, MenuButton, TabList, Tab, Persona, } from "@fluentui/react-components";
import type { ToolbarProps } from "@fluentui/react-components";

export const App = (props: Partial<ToolbarProps>) => {
    return <>
        <Toolbar aria-label="Default" {...props}>
            <ToolbarButton aria-label="Increase Font Size" icon={<GridDotsFilled />} />
            <ToolbarDivider />
            <Title2>Edge Computing</Title2>
            <ToolbarDivider />
            <ToolbarButton aria-label="Increase Font Size" appearance="primary" icon={<FontIncrease24Regular />} />
            <ToolbarButton aria-label="Decrease Font Size" icon={<FontDecrease24Regular />} />
            <ToolbarButton aria-label="Reset Font Size" icon={<TextFont24Regular />} />
            <ToolbarDivider />
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
        </Toolbar>
        <TabList defaultSelectedValue="tab1" vertical size="large">
            <Tab value="tab1" title="Home" icon={<HomeFilled />}></Tab>
            <Tab value="tab2" icon={<FontIncrease24Regular />}></Tab>
            <Tab value="tab3" icon={<MoreHorizontal24Filled />}></Tab>
            <Tab value="tab4" icon={<GridDotsFilled />}></Tab>
        </TabList>
    </>;
}