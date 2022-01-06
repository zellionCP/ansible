#!/bin/bash

# Functions #########################################################

help(){
echo "

Options :
		- --createRole : arborescense d'un role Ansible
"

}

createRole() {

	# définition du nom du rôle Ansible
	role_name=1
	[ "$1" != "" ] && role_name=$1

	ANSIBLE_ROLE="roles"
	PATH_ROLE=$ANSIBLE_ROLE/$role_name
	echo ""
	mkdir -p $PATH_ROLE
	mkdir -p $PATH_ROLE/{defaults,handlers,tasks,templates}
	touch $PATH_ROLE/defaults/main.yml
	touch $PATH_ROLE/handlers/main.yml
	touch $PATH_ROLE/tasks/main.yml
	touch $PATH_ROLE/templates/$role_name.hcl.j2
	tree $PATH_ROLE
	echo ""
}

# si option --createRole
if [ "$1" == "--createRole" ];then
	createRole $2

# si aucune option affichage de l'aide
else
	help

fi
