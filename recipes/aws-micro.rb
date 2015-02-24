require 'chef/provisioning'

with_machine_options({
  :ssh_username => 'ec2-user',
  :bootstrap_options => {
    :image_id => 'ami-146e2a7c',
    :flavor_id => 't2.micro'
  }
})
