#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./toConvert/*.mp3; do ffmpeg -i "$f" -c:a libvorbis -q:a 4 "${f/%mp3/ogg}"; done