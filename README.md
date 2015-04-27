...dotfiles and chef recipes for deploying a dev environment

## quickstart

### dev-deploy::default

Include `dev-deploy` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dev-deploy::default]"
  ]
}
```

## Supported Platforms

tested on Ubutu 1404

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dev-deploy']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## general chef povisioning notes

### adding to the Vagrant run list
```
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      ...
    }

    chef.run_list = [
      'recipe[dev-deploy::default]',
      ...
    ]
  end
```

### privision a provisioner
- [deploy chefdk](https://downloads.chef.io/chef-dk/)
- `git clone https://github.com/natb1/dev-deploy.git`
- `berks vendor cookbooks -b dev-deploy/Berksfile`

### deploy dev environment (locally):
```
sudo chef-client -z -o dev-deploy
```

### or, provision and deploy dev environment (using chef provisioning on AWS)
- `gem install chef-provisioning chef-provisioning-fog`
- add provisioner to appropriate IAM role (TODO: actually this doesn't work, chef-provisioner requires a non standard `aws configure`)
```
export CHEF_DRIVER=fog:AWS
chef-client -z dev-deploy/recipes/aws-micro.rb dev-deploy/recipes/dev.rb
```

