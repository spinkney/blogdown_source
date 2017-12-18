#!/bin/bash
cd /Users/pinkney/code/blogdown_source && \
git add -A && \
git commit -m "$@" && \
git push origin master && \
cd ../spinkney.github.io && \
git add -A && \
git commit -m "$@" && \
git push origin master
