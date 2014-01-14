#!/bin/bash -l
for file in `find . -name "bausteinsicht_plib_level0.png"`
do 
	convert ${file} -profile "../profiles/CMYK/WebCoatedSWOP2006Grade5.icc" ${file%".png"}.jpg; 
done
