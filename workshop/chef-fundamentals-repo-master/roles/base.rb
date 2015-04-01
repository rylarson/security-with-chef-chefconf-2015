name "base"

description "Base Server Role"

run_list "recipe[chef-client::delete_validation]", "recipe[chef-client]", "recipe[chef-client::config]", "recipe[vault]", "recipe[auditlab]"

default_attributes(
  "chef_client" => {
    "config" => {
      "ssl_verify_mode" => ":verify_peer",
      'log_level' => ':info'
    }
  }
)
