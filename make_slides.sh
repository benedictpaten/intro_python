#!/usr/bin/env bash

### This script can be used to generate html versions of the slide. However, I prefer to use RISE to present
### the notebooks as slides: see https://rise.readthedocs.io/

# Script to make slides from the Jupyter notebooks

# exit when any command fails
set -e

# Log the commands
set -x

# For each notebook make the slides
find . -iname "*.ipynb" | while read f
do
  jupyter nbconvert "${f}" --to slides
done

# Move slides to output dir
rm -rf lecture_slides
mkdir lecture_slides
mv lecture_notebooks/*slides.html ./lecture_slides/
