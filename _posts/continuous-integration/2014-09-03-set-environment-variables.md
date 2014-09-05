---
title: Setting Environment Variables
tags:
  - testing
categories:
  - continuous-integration
---
If you set environment variables, they will be available for the whole build. You can set your environment variables in two different ways:

## Environment Page on Project Settings
On the ***Environment*** page of your project settings you can enter one environment variable per line:

~~~
APP_ENV=production
MY_SECRET=iamsuperman
~~~

It is not allowed to use spaces between variable name and value.

~~~shell
# Does not work
NOT_WORKING = because-of-spaces
~~~

We will export these environment variables to the environment your build runs in:

~~~
export APP_ENV=production
export MY_SECRET=iamsuperman
~~~

We export your environment variables before all other commands of your build. This is pure convenience for setting up the environment but completely equal to exporting environment variables yourself.

## Directly in Setup or Test Commands
You can also export environment variables in your setup or test commands. So, for example, you could enter the following setup commands:

~~~
rvm use 2.0.0
export RAILS_ENV=test
bundle install
~~~

There is no difference between setting ***RAILS_ENV*** like this and adding it on the ***Environment*** page of your project settings. The advantage of putting it into the environment configuration is that secret values will not show up in your build log.

##Default Environment Variables
The following environment variables are exported automatically. You can use them to build your own scripts, run specific commands only if you are on a specific branch or even add flags to your ***CI_MESSAGE*** and use those flags to influence your build.

You can get the value of an environment variable by adding "$" in front of the variable name. For example:

~~~shell
echo $CI_MESSAGE
~~~

| Name                        | Value                                              |
| ----------------------------|:--------------------------------------------------:|
| CI                          |  true                                              |
| CI_BUILD_NUMBER             |  ID of the build in our service                    |
| CI_BUILD_URL                |  URL of the build                                  |
| CI_PULL_REQUEST             |  false                                             |
| CI_BRANCH                   |  Branch of the build                               |
| CI_COMMIT_ID                |  Commit Hash of the build                          |
| CI_COMMITTER_NAME           |  Name of the committer                             |
| CI_COMMITTER_EMAIL          |  Email of the committer                            |
| CI_COMMITTER_USERNAME       |  Username of the commiter in their SCM service     |
| CI_MESSAGE                  |  Message of the last commit for that build         |
| CI_NAME                     |  codeship                                          |
