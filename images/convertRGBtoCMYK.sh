#!/bin/bash -l
for file in `find . -name "*.png"`
do 
	convert -strip ${file} -profile "../profiles/CMYK/WebCoatedSWOP2006Grade5.icc" ${file%".png"}.jpg; 
done
