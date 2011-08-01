#!/bin/bash

cd ruby/command-t
rm Makefile
ruby extconf.rb
make install

