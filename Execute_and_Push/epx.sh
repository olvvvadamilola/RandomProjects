#!/bin/bash

#Get name of file to be executed
file_name=$1

#check if file exists
if [ -f "$file_name" ]; then
# Make file executable
chmod +x  "$file_name"

#prompt user for a commit message
read -p "Enter commit message or press ENTER to use '$file_name' by default:" commit_message
if [ -z "$commit_message" ]; then 
commit_message="$file_name"
fi

#Add newly executable file to GIT
git add "$file_name"

#Use entered commit message
git commit -m  "$commit_message"

#push changes to remote REPOSITORY
git push

#send user message confirming successful commit and push of file
echo "changes successfully commited and pushed for $file_name, you can now use the checker."
else
echo "Error 404 $file_name not found"
fi





#olvwadamilola
#please view README.md
