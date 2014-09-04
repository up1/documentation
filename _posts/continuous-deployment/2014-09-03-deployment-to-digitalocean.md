---
title: Continuous Deployment to DigitalOcean
layout: page
tags:
  - deployment
  - digital ocean
categories:
  - continuous deployment
---
## [Different Ways to deploy](#different-ways){:name="different-ways"}
DigitalOcean offers virtual servers (called Droplets).
There are various ways to deploy your application to DigitalOcean.

## [Capistrano](#capistrano){:name="capistrano"}
If you have a Ruby on Rails Application the most common way to deploy to DigitalOcean is Capistrano.
Checkout our article on <%= docs_link_to "Capistrano Deployment", "/continuous-deployment/deployment-with-capistrano/" %> for that.

## [SCP](#scp){:name="scp"}
A DigitalOcean droplet is very similar to a virtual server.
One way to deploy your application to DigitalOcean is to copy them via SCP to your Droplet.
Checkout our article on <%= docs_link_to "SCP Deployment", "/continuous-deployment/deployment-with-ftp-sftp-scp/" %> for that.
