...dotfiles and chef recipes for deploying a dev environment

## quickstart
- `git clone https://github.com/natb1/dev-infrastructure.git`
- [provision chefdk](https://downloads.chef.io/chef-dk/)
- deploy (locally):
```
berks vendor cookbooks -b dev-infrastructure/Berksfile
sudo chef-client -z -o dev-infrastructure
```
- or, configure the chef machine resource, provision, and deploy (AWS):
```
export CHEF_DRIVER=fog:AWS
# add key to environment or add provisioner to appropriate IAM role
export AWS_ACCESS_KEY_ID=<my-aws-access-key-id>
export AWS_SECRET_ACCESS_KEY=<my-aws-secret-access-key>
chef-client -z -o dev-infrastructure::aws-dev
```
