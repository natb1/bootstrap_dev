...dotfiles and chef recipes for deploying a dev environment

## playbook
### privision a provisioner
- [deploy chefdk](https://downloads.chef.io/chef-dk/)
- `git clone https://github.com/natb1/dev-infrastructure.git`

### deploy dev environment (locally):
```
berks vendor cookbooks -b dev-infrastructure/Berksfile
sudo chef-client -z -o dev-infrastructure
```

### or, provision and deploy dev environment (using chef machine on AWS)
- add key to provisioner environment or add provisioner to appropriate IAM role
```
export AWS_ACCESS_KEY_ID=$MY_AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$MY_AWS_SECRET_ACCESS_KEY
```
- provision and deploy
```
export CHEF_DRIVER=fog:AWS
chef-client -z -o dev-infrastructure::aws-dev
```
