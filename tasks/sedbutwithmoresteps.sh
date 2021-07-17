#!/bin/bash
#this file performs shell substitution on an ini subelement, the binary escapes are used for ' (\x27) and " (\x22) since sed treats them as control characters.
inputstream=$1
outputstream=$2
sed 's/\[\x27/\x27\[\x22/g' $inputstream | \
     	sed 's/\x27\]/\x22\]\x27/g' | \
	sed 's/\x27\, \x27/\x22\, \x22/g' | \
	sed 's/vsyslist=\x22/vsyslist=\x27\[\x22/g' | \
	sed 's/\x22$/\x22 \,\]\x27/g' >> buffer.temp
cp buffer.temp $outputstream
rm buffer.temp
