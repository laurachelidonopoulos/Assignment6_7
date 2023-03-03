#!/usr/bin/env make

all:	Assignment6.md ViEWSMapGridCell.png
	pandoc Assignment6.md -s --mathjax -f markdown+tex_math_dollars -t html -o Assignment6.html
	pandoc --pdf-engine=pdflatex Assignment6.md -o Assignment6.pdf

Assignment6.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat $^ > $@
