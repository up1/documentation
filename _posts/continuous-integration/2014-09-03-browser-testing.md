---
title: Browser Testing
tags:
  - testing
  - continuous integration
categories:
  - continuous integration
---
## [Firefox](#firefox){:name="firefox"}
Firefox 28 is installed and available in the PATH.

## [Chrome](#chrome){:name="chrome"}
Chrome and Chromium are both available in the PATH and in /usr/bin/google-chrome and /usr/bin/chromium-browser

## [Selenium](#selenium){:name="selenium"}
Firefox and Chrome both work with Selenium. To support Selenium with Chrome the [Chrome Driver](https://code.google.com/p/selenium/wiki/ChromeDriver) is installed as well. Please provide your own Selenium driver (e.g. [selenium-webdriver](https://github.com/vertis/selenium-webdriver) for Ruby) and keep it up-to-date. This will ensure that it will work with the latest version installed on Codeship.

## [SauceLabs](#saucelabs){:name="saucelabs"}
You can use [SauceConnect](https://saucelabs.com/docs/connect) to connect the SauceLabs
browser testing service with the application running in your Codeship build.

There is no special integration necessary for SauceConnect on Codeship. Make sure you set the username and api key
or other necessary variables in the <%= docs_link_to "environment configuration", "/continuous-integration/set-environment-variables/" %>. You can run your tests exactly the same
way as you would run them on your own development machine through SauceConnect.

## [PhantomJS](#phantomjs){:name="phantomjs"}
Phantomjs 1.9.7 is installed and available in the PATH.

## [CasperJS](#casperjs){:name="casperjs"}
Casperjs 1.1-beta3 is installed and available in the PATH.

## [SlimerJS](#slimerjs){:name="slimerjs"}
Casperjs 0.8 is installed and available in the PATH.
