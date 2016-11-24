#!/bin/bash

#----------------------
# written by Mike Schiessl
# email: info@miyw.de
# website: miyw.de
# feel free to distribute and / or modify
#----------------------



t_dir=$(dirname $0)

# source functions
for t_funcfile in $t_dir/functions/* ; do
        source $t_funcfile
done
# parse envs
while [[ $# -gt 1 ]] ; do
	t_key="$1"

	case $t_key in 
		-c|--config)
			t_configfile="$2"
			shift
		;;
		-j|--job)
			t_job="$2"
			shift
		;;
		*)
			usage
			shift
		;;		
	
	esac
done

# source config file


