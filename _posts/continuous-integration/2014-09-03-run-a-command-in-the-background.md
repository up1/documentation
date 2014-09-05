---
title: Run a command in the background
tags:
  - testing
  - faq
categories:
  - continuous-integration
---
Sometimes you might want to run a server or another process in the background. You can use the following template to run any of your commands as a background process

~~~shell
nohup bash -c "YOUR_COMMAND 2>&1 &"
~~~

Sometimes your server might take a couple of seconds to start, you need to add a sleep then to make sure it is up and running

~~~shell
nohup bash -c "YOUR_COMMAND 2>&1 &" && sleep 4
~~~

To see the output append **cat nohup.out** to the command

~~~shell
nohup bash -c "YOUR_COMMAND 2>&1 &" && sleep 4; cat nohup.out
~~~
