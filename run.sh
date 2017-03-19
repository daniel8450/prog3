#!/bin/bash

echo
echo "///pedigree///"
prolog
consult('pedigree.pl').
father(X,mary).
;
grandma(X,mary).
;
aunt(X,mary).
;
neice(X,dan).
;

echo
echo "///multimap///"
./multimap


