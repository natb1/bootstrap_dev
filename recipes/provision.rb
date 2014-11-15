require 'chef/provisioning'

machine 'dev' do
  machine_options :ssh_username => 'ec2-user',
    :bootstrap_options => {
      :image_id => 'ami-b66ed3de',
      :flavor_id => 't2.micro'
    }
  recipe 'dev-infrastructure'
end
