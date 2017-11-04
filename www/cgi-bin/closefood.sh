#!/bin/bash
# get today's date
OUTPUT="$(date)"
# You must add following two lines before
# outputting data to the web browser from shell
# script
echo "Content-type: text/html"
echo ""

sudo /usr/local/bin/closefood.sh

echo "ok, ok, it is closed, ok?"
