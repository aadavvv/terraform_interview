#!/bin/bash

BDIR=`dirname $0`
cd $BDIR

if [ "$#" -ne 0 ]
then
	echo [Usage]
	echo main.sh
	exit 0
fi

docker_install()
{
	set -x
	ansible-playbook --inventory-file="etc/hosts" ./docker.yml
}

docker_install

