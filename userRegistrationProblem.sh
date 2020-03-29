#!/bin/bash -x
shopt -s extglob

echo "****user registration **** "

pattern="^[A-Z][a-z]{2,}$"
read -p "enter a first name:" firstName
function checkPattern()
{
	local userName=$1 Pattern=$2
	if [[ $userName =~ $Pattern ]] 
	then
		 echo "valid Name" 
	else
		 echo "Invalid Name"
	fi
}
checkPattern $firstName $pattern

