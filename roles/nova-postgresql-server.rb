name "nova-postgresql-server"
description "PostgreSQL server for Nova"

run_list(
  "recipe[postgresql::server]",
  "recipe[nova::postgresql]"
)

default_attributes(
  "nova" => {
    "mysql" => false,
    "postgresql" => true
  },
  "postgresql" => {
    "hba_records" => [
      "host    all         all         0.0.0.0/0             md5"
    ]
  }
)
