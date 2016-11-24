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



# parse parameeters
while [[ $# -ge 1 ]] ; do
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
		-h|--help)
			help
			exit 0
		;;
		*)
			echo -e "unknown option \"$1 $2\" found \n\n"
			usage
			exit 1
		;;		
	esac
	shift
done

#verify parameters
	parse_params "config file" $t_configfile
	parse_params "job_type" $t_job


# start job
	source $t_dir/job/${t_job}.sh
