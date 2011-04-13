name "nova-compute"

run_list(
    "role[nova-base]",
	"recipe[vpc::nova_compute]"
)
