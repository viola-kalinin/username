#! /bin/bash
# username.sh
# Viola Kalinin 
echo "Enter a username: "
echo "Use lowercase letters, digits, and underscores"
echo "It must start with lowercase character"
echo "It must contain between 3 and 12 characters"
read NAME
while echo "$NAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read NAME
done
echo "Thank you"
