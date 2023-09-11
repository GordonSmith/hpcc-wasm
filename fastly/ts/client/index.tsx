import React from 'react';
import { createRoot } from 'react-dom/client';
import { FluentProvider, makeStaticStyles, teamsDarkTheme, teamsLightTheme, useThemeClassName, webDarkTheme, webLightTheme } from '@fluentui/react-components';
import { App } from './app';

function ApplyToBody() {
  const classes = useThemeClassName();

  React.useEffect(() => {
    const classList = classes.split(" ");
    document.body.classList.add(...classList);

    return () => document.body.classList.remove(...classList);
  }, [classes]);

  return null;
}

const container = document.body;
const root = createRoot(container!);
root.render(
  <FluentProvider theme={teamsLightTheme}>
    <ApplyToBody />
    <App />
  </FluentProvider>
);

new EventSource('/esbuild').addEventListener('change', () => location.reload())
