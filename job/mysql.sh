#!/bin/bash


#predefined vars

configtype=mysql	#remove me

bin_lvcreate="/sbin/lvcreate"
bin_mysql="/usr/bin/mysql"
bin_umount="/bin/umount"
#----
mysql_host="localhost"
mysql_port="3304"
mysql_user="backup"
mysql_pass="pukcab"
#---
mysql_lv_name="/dev/storage/mysql"	#where the live DB lives
mysql_snap_name="/dev/storage/mysql_snap"	#Snap name

#-----------

source $t_configfile

#verify
if [ ! "$t_job" == "mysql" ] ; then
	echo "wrong job loaded"
	exit 1
fi

if [ ! "$configtype" == "mysql" ] ; then
	echo "wrong configtype"
	exit 1
fi


# mysql bck job


echo $mysql_pass


