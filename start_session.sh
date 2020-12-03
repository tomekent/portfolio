#!/bin/bash

printf "\033[1;36m Pulling working dir master branch:\033[0m\n"

git pull origin master

printf "\033[1;36m Updating & pulling \public submodule master branch:\033[0m\n"

git submodule update
git submodule foreach git pull origin master
git pull --recurse-submodule && git submodule update --recursive

printf "\033[1;36m Your status is:\033[0m\n"

git status