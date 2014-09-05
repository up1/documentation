---
title: Git Submodules
tags:
  - git
  - submodules
categories:
  - continuous-integration
---
Git Submodules are initialized automatically. This will be triggered by the existence of the `.gitmodules` file in your project root.

We initialize the submodules with the following git command

`git submodule update --recursive --init`

In case of troubles with permissions have a look at <%= docs_link_to "how to give access to other repositories", "troubleshooting/access-to-other-repositories-fails-during-build/"%>.
