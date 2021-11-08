#!/usr/bin/env bash

# Script to make slides from the Jupyter notebooks

# exit when any command fails
set -e

# Log the commands
set -x

# For each notebook make the slides
find . -iname "*.ipynb" | while read f
do
  #echo ${f}
  jupyter nbconvert "${f}" --to slides
  #read line
done

# Move slides to output dir
rm -rf lecture_slides
mkdir lecture_slides
mv lecture_notebooks/*slides.html ./lecture_slides/
