#!/bin/bash



function usage {
	echo -ne "Usage: \n"
	echo -ne "dplybck.sh [-c configfile] -j [mysql|snap]\n"
	echo -ne "\n"
}


function help {
	echo -e "help"
	usage
	echo -e "-c | --config\t\tspecify jobs configfile - view readme for more information"
	echo -e "-j | --job\t\tspecify job to do - currently supported: mysql"
	echo -e "\n"
}
