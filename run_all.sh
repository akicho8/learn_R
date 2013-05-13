#!/bin/sh
rm -fr *.Rout
echo *.R | xargs -n 1 R CMD BATCH -q --no-timing
