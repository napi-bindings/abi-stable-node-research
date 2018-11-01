#!/bin/bash          
echo Starting build process ...
echo Build C library ...
gcc -c sum.cc && \
ar -rc libsum.a sum.o
echo Build Node.js native add-on ... && \
npm i && \
echo Node.js native add-on successfully created. && \
echo Starting test ... && \
node add.js && \
echo Test successfully ended.