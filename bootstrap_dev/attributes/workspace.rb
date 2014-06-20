include_attribute "bootstrap_dev::ssh"

bd_ssh = "git@github.com:natb1/bootstrap_dev.git"
bd_http = "https://github.com/natb1/bootstrap_dev.git"
bootstrap_dev_url = node[:ssh][:id_rsa] ? bd_ssh : bd_http

default[:workspace][:repositories] = {
  "bootstrap_dev" => bootstrap_dev_url
}
