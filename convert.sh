#!/bin/bash
#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./audiosToConvert/*.mp3
 do 
 	filename=$(basename -- $f)	echo "filename is: $filename"  
	ffmpeg -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.mp3/_q080.ogg}" #80
	ffmpeg -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.mp3/_q096.ogg}" #96
	ffmpeg -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.mp3/_q112.ogg}" #112
	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.mp3/_q128.ogg}" #128
	ffmpeg -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.mp3/_q160.ogg}" #160
	ffmpeg -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.mp3/_q192.ogg}" #192
	ffmpeg -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.mp3/_q224.ogg}" #224
	ffmpeg -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.mp3/_q256.ogg}" #256
	ffmpeg -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.mp3/_q320.ogg}" #320
	ffmpeg -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.mp3/_q500.ogg}" #500
 done
 
 for f in ./audiosToConvert/*.wav
 do 
 	filename=$(basename -- $f)
 
	ffmpeg -i "$f" -c:a libvorbis -q:a 1 "./converted/${filename/%.wav/_q080.ogg}" #80
	ffmpeg -i "$f" -c:a libvorbis -q:a 2 "./converted/${filename/%.wav/_q096.ogg}" #96
	ffmpeg -i "$f" -c:a libvorbis -q:a 3 "./converted/${filename/%.wav/_q112.ogg}" #112
	ffmpeg -i "$f" -c:a libvorbis -q:a 4 "./converted/${filename/%.wav/_q128.ogg}" #128
	ffmpeg -i "$f" -c:a libvorbis -q:a 5 "./converted/${filename/%.wav/_q160.ogg}" #160
	ffmpeg -i "$f" -c:a libvorbis -q:a 6 "./converted/${filename/%.wav/_q192.ogg}" #192
	ffmpeg -i "$f" -c:a libvorbis -q:a 7 "./converted/${filename/%.wav/_q224.ogg}" #224
	ffmpeg -i "$f" -c:a libvorbis -q:a 8 "./converted/${filename/%.wav/_q256.ogg}" #256
	ffmpeg -i "$f" -c:a libvorbis -q:a 9 "./converted/${filename/%.wav/_q320.ogg}" #320
	ffmpeg -i "$f" -c:a libvorbis -q:a 10 "./converted/${filename/%.wav/_q500.ogg}" #500
 done
