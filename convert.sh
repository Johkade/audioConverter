#!/bin/bash
#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./audiosToConvert/*.mp3
 do 
 	filename=$(basename -- $f)	

	echo "f is: " $f "and filename is: " $filename
	echo
	echo
	echo "output location is: " "./converted/${filename/%.mp3/_q080.ogg}"
	echo
	echo	


	#ffmpeg -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.mp3/_q080.ogg}" #80
#	ffmpeg -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.mp3/_q096.ogg}" #96
	#ffmpeg -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.mp3/_q112.ogg}" #112
#	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.mp3/_q128.ogg}" #128
	#ffmpeg -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.mp3/_q160.ogg}" #160
#	ffmpeg -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.mp3/_q192.ogg}" #192
	#ffmpeg -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.mp3/_q224.ogg}" #224
	#ffmpeg -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.mp3/_q256.ogg}" #256
#	ffmpeg -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.mp3/_q320.ogg}" #320
	#ffmpeg -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.mp3/_q500.ogg}" #500
 done
 
 for f in ./audiosToConvert/*.wav
 do 
 	filename=$(basename -- $f)
 


	echo
	echo "$f" is being converted to "./converted/${filename/%.wav/_q080.ogg}" and filename is: "$filename"
	echo

ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a -2 "./converted/${filename/%.wav/_q032_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a -1 "./converted/${filename/%.wav/_q048_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 0 "./converted/${filename/%.wav/_q064_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 1 "./converted/${filename/%.wav/_q080_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 2 "./converted/${filename/%.wav/_q096_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 3 "./converted/${filename/%.wav/_q112_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 4 "./converted/${filename/%.wav/_q128_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 5 "./converted/${filename/%.wav/_q160_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 6 "./converted/${filename/%.wav/_q192_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 7 "./converted/${filename/%.wav/_q224_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 8 "./converted/${filename/%.wav/_q256_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 9 "./converted/${filename/%.wav/_q320_mono.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 10 "./converted/${filename/%.wav/_q500_mono.ogg}"

ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a -2 "./converted/${filename/%.wav/_q032.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a -1 "./converted/${filename/%.wav/_q048.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 0 "./converted/${filename/%.wav/_q064.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.wav/_q080.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.wav/_q096.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.wav/_q112.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.wav/_q128.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.wav/_q160.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.wav/_q192.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.wav/_q224.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.wav/_q256.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.wav/_q320.ogg}"
ffmpeg -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.wav/_q500.ogg}"


 done
