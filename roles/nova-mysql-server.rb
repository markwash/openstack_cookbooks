name "nova-mysql-server"
description "MySQL server for Nova"

run_list(
  "recipe[build-essential]",
  "recipe[ruby]",
  "recipe[mysql::server]",
  "recipe[nova::mysql]"
)
