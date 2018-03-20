#!/bin/bash
for year in {1925..2017}
	do
	curl http://www.retrosheet.org/events/${year}eve.zip > data.zip
	unzip data.zip
	rm data.zip
	rm *.ROS
	rm TEAM*
	cat *.E* >> game_info
	rm *.E*
	rm {*
	LINE=$(cat game_info)
	echo $LINE | sed 's/\(id,[[:alpha:]]\{3\}[[:digit:]]\{9\}\)/\n\1/g' > edit1
	sed '/^$/d' < edit1 > edit2
	sed 's/\r /*EOL*/g' < edit2 > edit3
	sed 's/\*EOL\*$//' < edit3 >${year}games
	gsutil -m cp ${year}games gs://practiceengineering/retrosheet/games/${year}games
	rm game_info
	rm ed*
	rm 20*
done
