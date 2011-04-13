name "glance-registry"

run_list(
    "recipe[vpc::apt]",
    "recipe[glance::registry]"
)
