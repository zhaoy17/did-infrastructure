# Terraform Scripts for DID

[![CircleCI](https://circleci.com/gh/zhaoy17/did-infrastructure/tree/main.svg?style=shield)](https://circleci.com/gh/zhaoy17/did-infrastructure/tree/main)

This repository contains terraform scripts for provisioning application infrastructure for the DID (Date Interface Database: https://github.com/zhaoy17/did-api).

## Terraform Modules
### Child Modules
* **modules/heroku-app**: this module creates a heroku app with heroku postgres add-on attached to the app
* **modules/digitalocean-spaces**: this module creates digital ocean spaces

### Root Module
A functional DID server requires at least
* a platform to host the DID server (Heroku app, AWS Elastic Beanstalk, Azure App Services)
* a database server (postgres, mysql...)
* an object storage server (AWS S3, Azure Blob Storage, DigitalOcean Spaces...)

You can create those resources by calling the children modules in **terraform/main.tf** (https://www.terraform.io/docs/language/modules/index.html).

### Provisioning Infrastructure
* Circleci pipelines that create resources have been set up, which is triggered when modifications have been made to this repo
