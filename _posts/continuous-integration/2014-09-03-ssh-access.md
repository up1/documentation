---
title: SSH access
tags:
  - testing
  - ssh
  - key
  - debug
categories:
  - continuous-integration
---
You are able to activate build debugging at the bottom of the build detail view. (It only works for branches still available in your repository)

## [Machine State](#machine-state){:name="machine-state"}

When you start a SSH Debug session we will clone the repository and set up all environment variables that you defined and that we set by default. ***We won't run any setup or test commands.*** This gives you a clean machine so you can fully test and debug your application on Codeship. No generated files or changes done in any previous builds will be available. ***The SSH session is completely separate from any builds before.***


## [Codeship Command](#codeship-command){:name="codeship-command"}

Inside the SSH session, you have access to the Codeship command. It provides some convient methods to debug your project.

~~~shell
cs help
~~~

## [Existing Directories](#existing-directories){:name="existing-directories"}

There are a few directories in your home directory (`~`).
The most important one is the `clone` directory. The `clone` directory is your project root and contains your source code.

## [Useful commands](#useful-commands){:name="useful-commands"}

Get insight into Environment variables.

~~~shell
printenv
~~~

You can use `grep` to filter the Environment

~~~shell
printenv | grep CI
~~~

## [NodeJS version](#nodejs-version){:name="nodejs-version"}

By default we set the NodeJS version to `0.10.25`

You can manage the NodeJS version via NVM.

To install a new version of NodeJS use

~~~shell
nvm install 0.11
~~~

or

Use a different version of NodeJS

~~~shell
nvm use 0.10.25
~~~

## [Timeout](#timeout){:name="timeout"}

The debug build will shutdown itself after `60 minutes`

You can shutdown the debug build manually by using

~~~shell
cs exit
~~~

## [Clear Dependency Cache](#clear-dependency-cache){:name="clear-dependency-cache"}

If you want to start really fresh, you can clear the Dependency Cache by using

~~~shell
cs clear-cache
~~~

## [What is SSH public key?](#what-is-a-public-key){:name="what-is-a-public-key"}

SSH is a protocol which uses asymmetric key algorithms for authentication.
If you want to dig deeper into Public-Key cryptography you can start by reading the [Wikipedia article](http://en.wikipedia.org/wiki/Public-key_cryptography).

## [Get my public SSH Key](#ssh-key){:name="ssh-key"}

You can retrieve your public SSH Key by using the following command in your Terminal.

~~~shell
cat ~/.ssh/id_rsa.pub
~~~

## [Generate my SSH Key](#generate-ssh-key){:name="generate-ssh-key"}

To generate your own SSH Key, open up your Terminal and use this command.

~~~shell
ssh-keygen -b 8192
~~~
