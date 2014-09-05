---
title: Deployment Pipelines
layout: page
tags:
  - deployment
categories:
  - continuous-deployment
---
On Codeship, you are able to define **deployment pipelines**. A deployment pipeline is bound to a branch. Everytime a build runs for this branch, it kicks off your deployment pipeline.

Additionally, you can add multiple deployments within one deployment pipeline. This way, you can deploy for example to a staging environment first and only if that succeeds, to the production environment. This process is fully automated on Codeship and in case of errors you'll immediatelly get notified.

## [Set up a deployment pipeline](#setup-branch){:name="setup-branch"}
Go to your the ***Deployment*** page of your project settings to set up your deployment.

Add a branch you want to deploy and save it.
![Create Deployment Branch](deployment/create_branch.png)

Choose your hosting provider or deployment method.
![Choose Deployment](deployment/choose_deployment.png)

Fill in the deployment configuration and click the green checkmark on the top right of your deployment to save it."
![Save Deployment](deployment/save_deployment.png)

On the next push to this branch (in this case 'master') and if all tests pass the deployment will be triggered.
![Saved Deployment](deployment/saved_deployment.png)

Now you can add additional deployments or configure another deployment pipeline.

## [Add additional deployment methods](#additional-deployments){:name="additional-deployments"}

You can add multiple deployments to one deployment pipeline. They will run sequentially and can be ordered by dragging the deployment symbol.
![Multiple Deployments](deployment/multiple_deployments.png)

## [Deploy another branch](#deploy-another-branch){:name="deploy-another-branch"}
If you want to create a deployment pipeline for another branch, click on "Add a branch to deploy" and enter the branch name.
![Add additional Branch](deployment/add_additional_branch.png)

After saving the deployment pipeline you can add your deployment methods for that branch.
![Additional Branch](deployment/second_branch.png)

## [Edit Branch Settings](#edit-branch){:name="edit-branch"}
By clicking on "Edit Branch Settings" you can change the branch name or delete that branch.

## [Use Script Deployment for custom deployments / commands](#script-deployment){:name="script-deployment"}

You can use the <%= docs_link_to "Script Deployment", "/continuous-deployment/deploying-with-your-own-script/" %> to run your custom deployment commands or to execute other tasks right after or before a deployment.
