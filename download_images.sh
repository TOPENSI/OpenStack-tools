#!/bin/bash
openstack image list | while read line
do
id=`echo $line | awk {'print $2'}`
name=`echo $line | awk {'print $4'}`
if [[ $name == *"_backup"* || $name == *"_Backup"* ]]; then
  openstack image save --file "$name.qcow" "$id"
fi
done
