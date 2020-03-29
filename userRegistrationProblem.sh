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
mobilePattern="^[0-9]{2}[ ]{1}[0-9]{10}"
read -p "enter mobile number:" mobileNumber

function checkMobilePattern()
{
	if [[ $mobileNumber =~ $mobilePattern ]]
	then
		echo "valid number:"
	else
		echo "Invalid number"
	fi
}
checkMobilePattern 

# checking minimum 8 character password
passwordPattern="^[a-z]{8,}"
read -p "enter a password:" password

function validatePassword()
{
	if [[ ${#password} -ge 8 && $password =~ $passwordPattern ]]
	then
		echo "valid password:"
	else
		echo "invalid password:"
	fi
}
validatePassword

#checking password Contains at least one UpperCase
password_At_List_one_Upper_Case="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)[a-zA-Z0-9]*{7,40}$"
read -p "enter a password:" password

function validatePassword()
{
        if [[ $1 =~ $2 ]]
        then
                echo "valid password:"
        else
                echo "invalid password:"
        fi
}
validatePassword $password $password_At_List_one_Upper_Case

#checking password contains at least one numeric number
password_At_List_One_Numeric_Number="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)(.*[0-9].*{1}+)[a-zA-Z0-9]*{7,40}$"
read -p "enter a password:" password

function validatePassword()
{
        if [[ ${#password} -ge 8 && $password =~ $password_At_List_One_Numeric_Number ]]
        then
                echo "valid password:"
        else
                echo "invalid password:"
        fi
}
validatePassword

