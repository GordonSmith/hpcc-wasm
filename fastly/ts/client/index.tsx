import React from 'react';
import { createRoot } from 'react-dom/client';
import { FluentProvider, teamsDarkTheme, useThemeClassName, webDarkTheme, webLightTheme } from '@fluentui/react-components';
import { App } from './app';

import './index.css';

function ApplyToBody() {
  const classes = useThemeClassName();

  React.useEffect(() => {
    const classList = classes.split(" ");
    document.body.classList.add(...classList);

    return () => document.body.classList.remove(...classList);
  }, [classes]);

  return null;
}

const container = document.getElementById('root');
const root = createRoot(container!);
root.render(
  <FluentProvider theme={webLightTheme}>
    <ApplyToBody />
    <App />
  </FluentProvider>
);

new EventSource('/esbuild').addEventListener('change', () => location.reload())
