**Project execute and push**

Got the inspiration from doing 0x03 shell tasks

#This project aims to solve or eliminate the need to constantly type 4 commands for every shell task.
It aims to shorten sequence of command needed for ALX Shell projects.

#The script eliminates the need to constatly type out the following commands sequentially.

#chmod +x file_name
#git add .
#git commit -m "file_name"
#git push

#it shortens this to a single line  ./ep.sh file_name 

instead of having to write 4 sequential commands multiple times.
now you get to write 1 per task.


1. You can copy code and paste in text editor of your choice.
name as scriptname.sh where "scriptname" could be anything you choose, here it is **ep.sh** (short enough for us lazy people lol)
2. Give appropiate permission chmod +x
3. execute you go ./scriptname.sh file_name



You can place in current directory or if you would like to be able to launch from any directory follow the below steps
1. mkdir ~/bin          #bin can be any name
2. mv scriptname.sh ~/bin/
3. export PATH="$PATH:$HOME/bin
4. Reload shell profile to make changes
5. Now you should be able to run script from anywhere

enjoy!




author
Olvwadamilola on github

