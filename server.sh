#!/bin/bash
# Last Edit Date: 04-28-2019--14:41:19

if [ "$1" == "--full" ]; then
	rm -rf _site
	bundle update
fi

bundle exec jekyll serve --host localhost --incremental --watch