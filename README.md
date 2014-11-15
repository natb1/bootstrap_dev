...dotfiles and chef recipes for deploying a dev environment

## quickstart
Given git and chefdk:
```
$ git clone https://github.com/natb1/dev-infrastructure.git cookbooks/dev-infrastructure
$ export AWS_ACCESS_KEY_ID=<my-aws-access-key-id>
$ export AWS_SECRET_ACCESS_KEY=<my-aws-secret-access-key>
$ chef-client -z -o dev-infrastructure
```
