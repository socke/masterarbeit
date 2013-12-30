#!/bin/bash -l
for file in `find . -name "*.png"`
do 
	convert ${file} -profile "../profiles/CMYK/WebCoatedSWOP2006Grade5.icc" ${file%".png"}.jpg; 
done
