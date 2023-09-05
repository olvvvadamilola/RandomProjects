#!/bin/bash

#Get name of file to be executed
file_name=$1

#check if file name exists
if [ -z "$1" ]; then
echo "please provide the file name"
exit 1
fi

#check if file exists
if [ -f "$file_name" ]; then
# Make file executable
chmod +x  "$file_name"

#Add newly executable file to GIT
git add "$file_name"

#Use file name as commit message
git commit -m  "$file_name"

#push changes to remote REPOSITORY
git push

#send user message confirming successful commit and push of file
echo "changes successfully commited and pushed for $file_name, you can now use the checker."
else
echo "Error 404 $file_name not found"
fi





#olvwadamilola
#please view README.md
