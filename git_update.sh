#!/bin/bash

rm -r -f bundle/snipmate.vim

git submodule init
git submodule update
git submodule foreach git pull origin master

