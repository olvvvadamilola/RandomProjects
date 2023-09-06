#!/bin/bash

# Get name of file to be executed
filename=$1

function show_usage() {
	echo "Usage: ep <filename>"
	exit 1
}

function get_file() {
	# check if file exists
	if [ -f "$filename" ]; then
		# Make file executable and get commit message
		chmod +x  "$filename"
		get_commit_msg
	elif [ -z "$filename" ]; then
		show_usage
	else # throw error and exit
		echo "$filename: No such file"
		show_usage
	fi
}

function get_commit_msg() {
	#prompt user for a commit message
	echo "Enter a commit message or press ENTER to use '$filename' (not recommended)"
	read commit_message

	if [ -z "$commit_message" ]; then 
		echo "Defaulting to '$filename' as commit message. This is not recommended"
		commit_message="$filename"
	fi
	perform_git_ops
}

function perform_git_ops {
	#Add newly executable file to GIT
	git add "$filename"
	#Use entered commit message
	git commit -m "$commit_message"
	#push changes to remote REPOSITORY
	git push

	final_checks
}

function final_checks() {
	#send user message confirming successful commit and push of file
	if [ $? -eq 0 ]; then
		echo "changes successfully commited and pushed for $filename, you can now use the checker."
		echo "Here your latest log $(git log --name-status --online | head -2)"
	else
		echo
		echo "An error occurred while pushing your commit... Please check your connection"
		echo "Once it's solved, manually do a git push"
		exit 1
	fi
}

# start
get_file
