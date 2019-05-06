#!/bin/bash
# Last Edit Date: 05-01-2019--16:27:49

if [ "$1" == "--full" ]; then
	rm -rf _site
	bundle update
fi

bundle exec jekyll serve --host localhost --incremental --watch