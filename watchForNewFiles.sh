#!/bin/bash




inotifywait -m ./audiosToConvert -e create -e moved_to |
    while read dir action file
	do


		echo
		echo
		echo "audioConv_info :::: '$file' appeared in directory '$dir'"
		echo
		echo "audioConv_info :::: it will be converted to .ogg shortly"
		echo
		echo "audioConv_info :::: check ./converted for any newly generated .ogg files"
		echo
		echo "audioConv_info :::: original files will be moved to ./archive after successful conversion."
		echo

		exitcode=0

        	fullname="$dir$file"

		if [[ $file == *".wav"* ]]; then

			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 2 "./converted/${file/%.wav/_q096.ogg}" #96
        		exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 96 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 4 "./converted/${file/%.wav/_q128.ogg}" #128
        		exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 128 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 6 "./converted/${file/%.wav/_q192.ogg}" #192
        		exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 192 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 9 "./converted/${file/%.wav/_q320.ogg}" #320
			exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 320 kbit/s finished with exit code: " $?
        		ffmpeg -loglevel warning -nostats -i "$fullname" -ac 1 "./converted/${file/%.wav/_q080_mono.ogg}" #mono 80
			exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 80 kbit/s mono finished with exit code: " $?
		fi
		if [[ $file == *".mp3"* ]]; then

                        ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 2 "./converted/${file/%.mp3/_q096.ogg}" #96
                        exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 96 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 4 "./converted/${file/%.mp3/_q128.ogg}" #128
                        exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 128 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 6 "./converted/${file/%.mp3/_q192.ogg}" #192
                        exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 192 kbit/s finished with exit code: " $?
			ffmpeg -loglevel warning -nostats -i "$fullname" -c:a libvorbis -q:a 9 "./converted/${file/%.mp3/_q320.ogg}" #320
			exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 320 kbit/s finished with exit code: " $?
                        ffmpeg -loglevel warning -nostats -i "$fullname" -ac 1 "./converted/${file/%.mp3/_q080_mono.ogg}" #mono 80
                	exitcode=$exitcode+$?
			echo "audioConv_info :::: conversion to 80 kbit/s mono finished with exit code: " $?
		fi

		echo
		echo "audioConv_info :::: conversion for  '$file' finished with exit code: $exitcode"

		mv "$fullname" "./archive/$file"
		echo "audioConv_info :::: moving $fullname to ./archive/$file"

    	done
