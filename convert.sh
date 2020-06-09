#convert mp3 to ogg

#ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg


for f in ./audiosToConvert/*.mp3
 do 
 fullname = $f
echo $fullname
 filename = "$(basename -- $fullname)"
echo $filename 
 
 
 
 
# ffmpeg -i "$f" -c:a libvorbis -q:a 4 "${f/%mp3/ogg}"; done
#





