---
title: Continuous Deployment via custom scripts
layout: page
tags:
  - deployment
  - scripts
categories:
  - continuous-deployment
---
Script deployment is useful to define your custom deployment commands or execute another task after or prior a deployment.

For example:

~~~shell
# execute rake tasks
bundle exec rake my_rake_task

# run additional tests
# my_test_script.sh lives in the root folder
./my_test_script.sh

# deploy to Amazon S3 or any other server with ssh access
# you can define your keys in the environment variables
~~~

To get more concrete you can, for example, run a migration on Heroku after your deployment:
![Migration after Heroku Deployment](deployment/script_deployment.png)
