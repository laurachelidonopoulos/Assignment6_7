#!/usr/bin/env make

Assignment6.html: Assignment6.md ViEWSMapGridCell.png
	 pandoc Assignment6.md -s --mathjax -f markdown+tex_math_dollars -t html -o Assignment6.html

Assignment6.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat $^ > $@
