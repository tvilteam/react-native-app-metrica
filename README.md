# react-native-app-metrica
React Native bridge to the [AppMetrica](https://appmetrica.yandex.com/) on both iOS and Android.

[![Build Status](https://travis-ci.org/doochik/react-native-app-metrica.svg?branch=master)](https://travis-ci.org/doochik/react-native-app-metrica)
[![NPM version](https://badge.fury.io/js/react-native-app-metrica.svg)](https://www.npmjs.com/package/react-native-app-metrica)

## Installation

1. **Only for iOS**: [setup AppMetrica](https://tech.yandex.com/appmetrica/).
`YandexMobileMetrica.framework` should be placed at `<project_dir>/ios/` or `<project_dir>/ios/Frameworks/`.
Otherwise you'll get build error.
2. `npm install --save react-native-app-metrica`
3. `react-native link react-native-app-metrica`

**iOS notice**: If you build failed after installing SDK and `react-native-app-metrica`
make sure `YandexMobileMetrica.framework` and `libRCTAppMetrica.a` are included at Build Phase -> Link Binary With Libraries

## Example

```js
import AppMetrica from 'react-native-app-metrica';

AppMetrica.activateWithApiKey('34h3g43-j34h3j4-3j4h3j43-343-34');

AppMetrica.reportEvent('Hello world');
```

## Usage

```js
import AppMetrica from 'react-native-app-metrica';

// Starts the statistics collection process.
AppMetrica.activateWithApiKey('...KEY...');
// OR
AppMetrica.activateWithConfig({
  apiKey: '...KEY...',
  sessionTimeout: 120,
  firstActivationAsUpdate: true,
});

// Sends a custom event message and additional parameters (optional).
AppMetrica.reportEvent('My event');
AppMetrica.reportEvent('My event', { foo: 'bar' });

// Send a custom error event.
AppMetrica.reportError('My error');
```
