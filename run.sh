#!/bin/bash

echo
echo "///pedigree///"
echo $prolog
echo consult('pedigree.pl').
echo father(X,mary).
echo ;
echo grandma(X,mary).
echo ;
echo aunt(X,mary).
echo ;
echo neice(X,dan).
echo;

echo
echo "///multimap///"
./multimap


