...dotfiles and chef recipes for deploying a dev environment

## quickstart
```
$ git clone https://github.com/natb1/dev-infrastructure.git cookbooks/dev-infrastructure
```
- deploy (locally):
```
$ chef-client -z -o dev-infrastructure
```
- or, configure the chef machine resource, provision, and deploy:
```
$ export CHEF_DRIVER=fog:AWS
$ export AWS_ACCESS_KEY_ID=<my-aws-access-key-id>
$ export AWS_SECRET_ACCESS_KEY=<my-aws-secret-access-key>
$ chef-client -z -o dev-infrastructure::aws-dev
```
