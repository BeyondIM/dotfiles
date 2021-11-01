#!/usr/bin/env bash
ext=${1##*.}
convert $1 \
	\( -size 200x -background none -fill "#333" -gravity center \
	label:"PortableAppK 社区" -trim -rotate -30 \
	-bordercolor none -border 100 \
	-write mpr:wm +delete \
	+clone -fill mpr:wm  -draw 'color 0,0 reset' \) \
	-compose over -composite \
	${1%.*}_watermark.${ext}

