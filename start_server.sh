#!/bin/bash
# Last Edit Date: 07-28-2019--22:24:37

if [ "$1" == "--full" ]; then
	rm -rf _site
	bundle install --path vendor/bundle
	bundle update
fi

bundle exec jekyll serve --host localhost --incremental --watch