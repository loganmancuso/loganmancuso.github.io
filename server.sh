#!/bin/bash

if [ "$1" == "-full" ]; then
	bundle update
fi


bundle exec jekyll serve --incremental --watch