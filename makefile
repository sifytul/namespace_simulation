all: create_bridges create_ns create_veth configure_ip configure_routing

create_bridges:
	bash create_bridges.sh

create_ns:
	bash create_ns.sh

create_veth:
	bash create_veth.sh

configure_ip:
	bash configure_ip.sh

configure_routing:
	bash configure_routing.sh

ping:
	bash test_connectivity.sh

clean_up:
	bash clean_up.sh

executable:
	bash make_all_file_executable.sh