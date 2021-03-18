#!/bin/bash
openstack server list | while read line
do
id=`echo $line | awk {'print $2'}`
name=`echo $line | awk {'print $4'}`
if [[ $name == *"gra1"* ]]; then
  openstack server image create --name "$name" "$id"
fi
done
