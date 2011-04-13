name "glance-api"

run_list(
    "recipe[vpc::apt]",
    "recipe[glance::api]"
)
