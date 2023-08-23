import React from 'react';
import ReactDOM from 'react-dom';
import { Button, FluentProvider, Select, webLightTheme } from '@fluentui/react-components';

import { App } from './app';

ReactDOM.render(
  <FluentProvider theme={webLightTheme}>
    <App />
  </FluentProvider>,
  document.getElementById('root'),
);