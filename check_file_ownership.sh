#!/bin/bash
#checking file ownership
#
#passwords="/etc/passwd
if [ -O /etc/passwd ];
then
    echo "You are the owner of the /etc/passwd file"
else
    echo "Sorry, you are not the owner of the /etc/passwd file"
fi

sleep 2

#check file group test
#
if [ -G $HOME/testing ];
then
    echo "You are in the same group as the file"
else
    echo "The file is not owned by your group."
fi
