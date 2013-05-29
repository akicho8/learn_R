#!/bin/sh
rm -fr *.Rout
n . -x
echo *.R | xargs -n 1 /usr/local/bin/R CMD BATCH -q --no-timing
