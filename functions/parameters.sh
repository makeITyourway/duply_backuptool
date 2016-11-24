#!/bin/bash


function parse_params {
	tf_name="$1"
	tf_param="$2"
	#tf_paramreq="$3"
	if [ -n "$tf_name" ] ; then
		if [ -z "$tf_param" ] ; then
			echo -e "PARAMETER \"$tf_name\" not set !!\n\n"
			usage
			exit 1
		fi
	else 
		return 0
	fi
}
