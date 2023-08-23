import React from 'react';
import ReactDOM from 'react-dom';
import { Button, FluentProvider, Select, webLightTheme } from '@fluentui/react-components';

// import App from './App';

ReactDOM.render(
  <FluentProvider theme={webLightTheme}>
    <Button appearance="primary">Hello World!</Button>
    <Select>
      <option>Red</option>
      <option>Green</option>
      <option>Blue</option>
    </Select>
  </FluentProvider>,
  document.getElementById('root'),
);