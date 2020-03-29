#!/bin/bash -x
shopt -s extglob

echo "****user registration **** "

#pattern checking
pattern="^[A-Z][a-z]{2,}$"
read -p "enter a first name:" firstName
read -p "enter a last name:" lastName
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
checkPattern $lastName $pattern

#check email pattern
emailPattern="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2}([.]?[a-z]{2})?$"
read -p "enter a email adress:" emailid

function checkPattern()
{
        local userName=$1 Pattern=$2
        if [[ $userName =~ $Pattern ]]
        then
                 echo "valid email"
        else
                 echo "Invalid email"
        fi
}
checkPattern $emailid $emailPattern

#checking pattern for mobile format
read -p "Enter Mobile No:" mobile
if [[ $mobile =~  $VALIDMOBILENO ]]
then
	echo "Your mobile no is valid"
else
	echo "Your mobile no is not valid"
fi
