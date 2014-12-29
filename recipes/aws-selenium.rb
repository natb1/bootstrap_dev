require 'chef/provisioning'

machine 'selenium' do
  machine_options :ssh_username => 'ubuntu',
    :bootstrap_options => {
      :image_id => 'ami-9eaa1cf6',
      :flavor_id => 't2.micro'
    }
  recipe 'dev-infrastructure'
  recipe 'dev-infrastructure::selenium'
end

# /usr/bin/Xvfb :99 -ac -screen 0 1024x768x24 &
# export DISPLAY=:99
