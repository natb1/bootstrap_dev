...dotfiles and chef recipes for deploying a dev environment

## quickstart
- prerequisites: git, chefdk
- configure environment for the chef machine resource:
```
$ export CHEF_DRIVER=fog:AWS
$ export AWS_ACCESS_KEY_ID=<my-aws-access-key-id>
$ export AWS_SECRET_ACCESS_KEY=<my-aws-secret-access-key>
```
- git the cookbook, provision and deploy
```
$ git clone https://github.com/natb1/dev-infrastructure.git cookbooks/dev-infrastructure
$ chef-client -z -o dev-infrastructure
```
