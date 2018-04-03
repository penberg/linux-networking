#!/bin/sh

pandoc --smart --table-of-contents --top-level-division=part \
	-o linux-net-book.pdf \
	title.txt \
	book.md
