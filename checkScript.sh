#!/bin/bash
#script is used to check bash spell, add x mode and execute .sh scripts
#enter the name od script you want to execute

### #check that $1 is NOT null
if [ -z $1 ]
then 
	echo "Please enter a name of your script"
	exit 1
else 
	echo "You enetered: $1"
fi 

### #check that your script exist
if [ -e $1 ] 
then 
	echo "Your script exists"
	
else 
	echo "Your script DOES NOT exists"
	echo "Name of file you entered: $1 -- check if file exist"
	exit 1
fi

### #check bash spell
echo "shellcheck"
shellcheck $1 

### #check that your script could be executed
if [ -x $1 ] 
then
	echo "Your script could be executed"
else
	echo "Your script COULD NOT be executed"
	echo "***Adding execute mode to your script***"
	chmod +x $1
	echo "Now you can execute your script"
fi

### #execute sript 
echo 
echo "$1"
sh ./$1

