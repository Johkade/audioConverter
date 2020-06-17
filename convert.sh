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
	ffmpeg -i "$f" -c:a libvorbis -q:a -2 "./converted/${filename/%.wav/_q032.ogg}" #32
	ffmpeg -loglevel warning -nostats -i "$f" -ac -2 "./converted/${filename/%.wav/_q032_mono.ogg}" #32 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a -1 "./converted/${filename/%.wav/_q048.ogg}" #48
ffmpeg -loglevel warning -nostats -i "$f" -ac -1 "./converted/${filename/%.wav/_q048_mono.ogg}" #48 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 0 "./converted/${filename/%.wav/_q064.ogg}" #64
ffmpeg -loglevel warning -nostats -i "$f" -ac 0 "./converted/${filename/%.wav/_q064_mono.ogg}" #64 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.wav/_q080.ogg}" #80
ffmpeg -loglevel warning -nostats -i "$f" -ac 1 "./converted/${filename/%.wav/_q080_mono.ogg}" #80 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.wav/_q096.ogg}" #96
ffmpeg -loglevel warning -nostats -i "$f" -ac 2 "./converted/${filename/%.wav/_q096_mono.ogg}" #96 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.wav/_q112.ogg}" #112
ffmpeg -loglevel warning -nostats -i "$f" -ac 3 "./converted/${filename/%.wav/_q112_mono.ogg}" #112 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.wav/_q128.ogg}" #128
ffmpeg -loglevel warning -nostats -i "$f" -ac 4 "./converted/${filename/%.wav/_q128_mono.ogg}" #128 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.wav/_q160.ogg}" #160
ffmpeg -loglevel warning -nostats -i "$f" -ac 5 "./converted/${filename/%.wav/_q160_mono.ogg}" #160 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.wav/_q192.ogg}" #192
ffmpeg -loglevel warning -nostats -i "$f" -ac 6 "./converted/${filename/%.wav/_q192_mono.ogg}" #192 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.wav/_q224.ogg}" #224
ffmpeg -loglevel warning -nostats -i "$f" -ac 7 "./converted/${filename/%.wav/_q224_mono.ogg}" #224 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.wav/_q256.ogg}" #256
ffmpeg -loglevel warning -nostats -i "$f" -ac 8 "./converted/${filename/%.wav/_q256_mono.ogg}" #256 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.wav/_q320.ogg}" #320
ffmpeg -loglevel warning -nostats -i "$f" -ac 9 "./converted/${filename/%.wav/_q320_mono.ogg}" #320 mono
	ffmpeg -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.wav/_q500.ogg}" #500
ffmpeg -loglevel warning -nostats -i "$f" -ac 10 "./converted/${filename/%.wav/_q500_mono.ogg}" #500 mono
 done
