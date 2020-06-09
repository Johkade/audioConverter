#!/bin/bash
#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./audiosToConvert/*.mp3
 do 
	echo "fullname is: $f"
 	filename=$(basename -- $f)
	echo "filename is: $filename"  
 
	ffmpeg -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.mp3/q01.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.mp3/q02.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.mp3/q03.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.mp3/q04.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.mp3/q05.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.mp3/q06.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.mp3/q07.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.mp3/q08.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.mp3/q09.ogg}"
	ffmpeg -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.mp3/q10.ogg}"



 done
