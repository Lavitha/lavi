#!/bin/bash
_zenity="/usr/bin/zenity"



FILES=$(${_zenity} --title  "Location of folder" \
	            --entry --text "Enter the  absolute path in this format "/home/lavitha/Downloads/foldername/*.sce )
#FILES="/home/lavitha/Downloads/d/*.sce"
count=0
  for f in $FILES; do
   scilab  -nb -nwni -ns -f "$f" &
    let count+=1
	sleep 2
        

  done | zenity --text-info --title "Storing Result..." --width 600 --height 300
	            


