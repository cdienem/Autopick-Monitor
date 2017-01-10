#!/bin/bash

# run in the micrographs folder where the outopick.star files are saved
# Use the respective rootname in line 10 (e.g. ... more *my_autopick_rootname* ...)


while [ 1 ];
do
	printf "\033c"
	number=$(more *auto* | grep . | wc -l)	
	files=$(ls *autopick* | wc -l)
	avg=$(expr $number / $files)
	echo "Processed micrographs: $files"	
	echo "Picked particles: $number ($avg per mic)";
	sleep 5;
done;
