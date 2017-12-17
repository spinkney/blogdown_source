---
title: easy git for beginners
author: ~
date: '2017-12-17'
slug: easy-git-for-beginners-rmd
categories: []
tags:
  - code
description: ''
---

```{bash, eval = FALSE}
##################################
### clone repos from remote ######
##################################

# clone repo to pull into your local directory
git clone https://git.office.comscore.com/scm/slam/REPO

# clone all repos in project folder
FOR %i in (repo1 repo2 repo3 ...) DO git clone
https://git.office.comscore.com/scm/slam/%i

##################################
### clone local repo to remote ###
##################################

# first set up local repo.
# cd into your local repo folder
git init

# clone to remote
git clone https://git.office.comscore.com/scm/slam/REPO

##################################
### committing and pushing #######
##################################

# let's start in our local repo
# change something
# added it for 'staging'
git add .

# commit to local
git commit -m "message"

# push it to remote
git push REMOTENAME BRANCHNAME

# eg git push origin master

##################################
### branching and checkout #######
##################################

# pull the most recent updates first
git pull origin master

# create repo on local
git checkout -b LOCAL_BRANCH_NAME

# create repo on remote
git push origin REMOTE_BRANCH_NAME

# see which branch you're on
git log --oneline --decorate

# checkout HEAD to branch
git checkout BRANCH_NAME

##################################
### merge with pull-request ######
##################################

# example pull-request demo

# pull the most recent updates first
git pull origin master

# create repo on local
git checkout -b pull-request-demo

# create repo on remote
git push origin pull-request-demo

# change something
git add .
git commit -m "one more update"
git push origin pull-request-demo

# go to online repo and create pull request
# then merge
git pull 
git checkout master
git pull

# delete locally
git branch -d pull-request-demo

# delete remote
git push origin --delete pull-request-demo

##################################
### misc helpful commands ########
##################################

# list remote branches
git branch -r

# rename branch
git branch -m new-name

### forget remote branch ###
git branch -d -r origin/<remote branch name>

# you also need to reset the configuration associated to the local branch:
git config --unset branch.<branch>.remote
git config --unset branch.<branch>.merge
```