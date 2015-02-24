...dotfiles and chef recipes for deploying a dev environment

## playbook
### privision a provisioner
- [deploy chefdk](https://downloads.chef.io/chef-dk/)
- `git clone https://github.com/natb1/dev-infrastructure.git`
- `berks vendor cookbooks -b dev-infrastructure/Berksfile`

### deploy dev environment (locally):
```
sudo chef-client -z -o dev-infrastructure
```

### or, provision and deploy dev environment (using chef provisioning on AWS)
- deploy chef-provisioning
```
gem install chef-provisioning chef-provisioning-fog
```
- add provisioner to appropriate IAM role (TODO: actually this doesn't work, chef-provisioner requires a non standard `aws configure`)
- provision and deploy
```
export CHEF_DRIVER=fog:AWS
chef-client -z dev-infrastructure/recipes/aws-micro.rb dev-infrastructure/recipes/dev.rb
```
