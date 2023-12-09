#!/bin/bash

pythonFolder="pythonFiles"
txtFolder="textFiles"
bashFolder="bashFiles"

mkdir -p "$pythonFolder" "$txtFolder" "$bashFolder"

for file in *; do
	if [ -f "$file" ]; then
		echo "Processing File..."

		case $file in
			*.py)
				echo "Python File: $file"
				mv "$file" "$pythonFolder/"
				;;
			*.txt)
				echo "Text File: $file"
				mv "$file" "$txtFolder/"
				;;
			*.sh)
				if [[ $file == "organizer.sh" ]] || [[ $file == autoPush.sh ]]; then
					echo "Self"
				else
					echo "Bash File: $file"
					mv "$file" "$bashFolder/"
				fi
				;;
			*)
				echo "Unknown File: $file"
				;;
		esac
	fi
done

