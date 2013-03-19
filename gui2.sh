#!/bin/bash
_zenity="/usr/bin/zenity"
echo "Welcome to automatic code check"


echo "Hello $USER, Welcome to CODE CHECK"
echo "The Date & Time is:"date

	read -p "Enter foldername in downloads : " Foldername
	echo -e "Please enter a directory name to be created"
        
	
	read DIRK
	#zenity --question
	if [ ! -d $DIRK ]

	then
		mkdir  ~/Downloads/$DIRK	 			
		echo -e "Directory $DIRK created"
		#read -p "enter file name:" filename
		find ~/Downloads/$Foldername -type f -iname '*.sce' -print0 |
		while IFS= read -r -d '' f; 
		do cp -- "$f" ~/Downloads/$DIRK ;
		sleep 2
		done

		
		
	else
             
		echo -e "$DIRK directory already exists!"
		echo -e "1.Faild to create $DIRK directory, Directory already exists"
	fi
	
