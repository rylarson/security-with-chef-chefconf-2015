# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "rylarson"
client_key               "#{current_dir}/rylarson.pem"
validation_client_name   "workshop-validator"
validation_key           "#{current_dir}/workshop-validator.pem"
chef_server_url          "https://54.149.74.56/organizations/workshop"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
