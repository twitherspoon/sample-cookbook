# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "twitherspoon"
client_key               "#{current_dir}/twitherspoon.pem"
validation_client_name   "chef-class-int-validator"
validation_key           "#{current_dir}/chef-class-int-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chef-class-int"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]

ssl_verify_mode :verify_none
verify_api_cert false
