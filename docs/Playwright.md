# Playwright
> Playwright is an open-source  Node.js library developed by Microsoft, designed for automating web applications across multiple browsers. It supports modern web features and provides a single API for browsers such as Chromium, Firefox, and WebKit. Playwright is known for its ability to handle multiple browser contexts, parallel testing, and automated testing scenarios with high reliability. It is particularly useful for testing dynamic web applications due to its support for features like auto-wait, which helps in dealing with elements that load asynchronously, and its ability to execute tests across different devices and viewport sizes . [Playwright Website](https://playwright.dev/)

## Introduction

Playwright Test was created specifically to accommodate the needs of end-to-end testing. Playwright supports all modern rendering engines including Chromium, WebKit, and Firefox. Test on Windows, Linux, and macOS, locally or on CI, headless or headed with native mobile emulation of Google Chrome for Android and Mobile Safari. 


## Installing Playwright

```bash
npm init playwright@latest
```

Run the install command and select the following to get started:

- Choose between TypeScript or JavaScript (default is TypeScript)
- Name of your Tests folder (default is tests or e2e if you already have a tests folder in your project)
- Add a GitHub Actions workflow to easily run tests on CI
- Install Playwright browsers (default is true)

## What's Installed

Playwright will download the browsers needed as well as create the following files.

```bash
playwright.config.tspackage.jsonpackage-lock.jsontests/  example.spec.tstests-examples/  demo-todo-app.spec.ts
```

The [playwright.config](https://playwright.dev/docs/test-configuration) is where you can add configuration for Playwright including modifying which browsers you would like to run Playwright on. If you are running tests inside an already existing project then dependencies will be added directly to your `package.json`.

The `tests` folder contains a basic example test to help you get started with testing. For a more detailed example check out the `tests-examples` folder which contains tests written to test a todo app.

## Running the Example Test

By default tests will be run on all 3 browsers, chromium, firefox and webkit using 3 workers. This can be configured in the [playwright.config file](https://playwright.dev/docs/test-configuration). Tests are run in headless mode meaning no browser will open up when running the tests. Results of the tests and test logs will be shown in the terminal.

```bash
npx playwright test
```

![tests running in command line](https://github.com/microsoft/playwright/assets/13063165/981c1b2b-dc7e-4b85-b241-272b44da6628) See our doc on [Running Tests](https://playwright.dev/docs/running-tests) to learn more about running tests in headed mode, running multiple tests, running specific tests etc.

## HTML Test Reports

After your test completes, an [HTML Reporter](https://playwright.dev/docs/test-reporters#html-reporter) will be generated, which shows you a full report of your tests allowing you to filter the report by browsers, passed tests, failed tests, skipped tests and flaky tests. You can click on each test and explore the test's errors as well as each step of the test. By default, the HTML report is opened automatically if some of the tests failed.

```bash
npx playwright show-report
```

![HTML Report](https://github.com/microsoft/playwright/assets/13063165/38ec17a7-9e61-4002-b137-a93812765501)

## Running the Example Test in UI Mode

Run your tests with [UI Mode](https://playwright.dev/docs/test-ui-mode) for a better developer experience with time travel debugging, watch mode and more.

- npm
- yarn
- pnpm

```bash
npx playwright test --ui
```

```bash
yarn playwright test --ui
```

```bash
pnpm exec playwright test --ui
```

![UI Mode](https://github.com/microsoft/playwright/assets/13063165/c5b501cc-4f5d-485a-87cc-66044c651786)

Check out or [detailed guide on UI Mode](https://playwright.dev/docs/test-ui-mode) to learn more about its features.

## Updating Playwright

To update Playwright to the latest version run the following command:


```bash
npm install -D @playwright/test@latest# Also download new browser binaries and their dependencies:npx playwright install --with-deps
```

You can always check which version of Playwright you have by running the following command:

```bash
npx playwright --version
```
