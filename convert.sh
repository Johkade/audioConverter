#!/bin/bash
#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./audiosToConvert/*.mp3
 do 
	echo "fullname is: $f"
 	filename=$(basename -- $f)
	echo "filename is: $filename"  
 
	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%mp3/ogg}"

 done




