#!/bin/bash
#script is used to check bash spell, add x mode and execute .sh scripts
#enter the name od script you want to execute

if [ -e $1 ] #check that your script exist
then
	echo "Your script exists"
else 
	echo "Your script DOES NOT exists"
	exit 1
fi
