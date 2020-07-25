#!/bin/bash
#convert mp3 to ogg
 
 for f in ./audiosToConvert/*.wav
 do 
 	filename=$(basename -- $f)
 


	echo
	echo "$f" is being converted to "./converted/${filename/%.wav/_q080.ogg}" and filename is: "$filename"
	echo

ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 9 -ar 44100 -map a "./converted/${filename/%.wav/_q320_44_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 9 -ar 44100 -map a "./converted/${filename/%.wav/_q320_44_mono.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 9 -ar 22050 -map a "./converted/${filename/%.wav/_q320_22_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 9 -ar 22050 -map a "./converted/${filename/%.wav/_q320_22_mono.ogg}"

echo "320 done"

ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 6 -ar 44100 -map a "./converted/${filename/%.wav/_q192_44_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 6 -ar 44100 -map a "./converted/${filename/%.wav/_q192_44_mono.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 6 -ar 22050 -map a "./converted/${filename/%.wav/_q192_22_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 6 -ar 22050 -map a "./converted/${filename/%.wav/_q192_22_mono.ogg}"

echo "192 done"

ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 4 -ar 44100 -map a "./converted/${filename/%.wav/_q128_44_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 4 -ar 44100 -map a "./converted/${filename/%.wav/_q128_44_mono.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 4 -ar 22050 -map a "./converted/${filename/%.wav/_q129_22_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 4 -ar 22050 -map a "./converted/${filename/%.wav/_q128_22_mono.ogg}"

echo "128 done"

ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 2 -ar 44100 -map a "./converted/${filename/%.wav/_q096_44_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 2 -ar 44100 -map a "./converted/${filename/%.wav/_q096_44_mono.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 2 -ar 22050 -map a "./converted/${filename/%.wav/_q096_22_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 2 -ar 22050 -map a "./converted/${filename/%.wav/_q096_22_mono.ogg}"

echo "96 done"

ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 0 -ar 44100 -map a "./converted/${filename/%.wav/_q064_44_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 0 -ar 44100 -map a "./converted/${filename/%.wav/_q064_44_mono.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -q:a 0 -ar 22050 -map a "./converted/${filename/%.wav/_q064_22_stereo.ogg}"
ffmpeg -y -loglevel warning -nostats -i "$f" -c:a libvorbis -ac 1 -q:a 0 -ar 22050 -map a "./converted/${filename/%.wav/_q064_22_mono.ogg}"

echo "64 done"


 done
