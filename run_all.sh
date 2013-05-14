#!/bin/sh
rm -fr *.Rout
n . -x
echo *.R | xargs -n 1 R CMD BATCH -q --no-timing
