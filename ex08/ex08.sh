#!/bin/bash

zer=$(grep -o "0" resources/digitfile.txt | wc -l)" zeroes"
ones=$(grep -o "1" resources/digitfile.txt | wc -l)" ones"
twos=$(grep -o "2" resources/digitfile.txt | wc -l)" twos"
th=$(grep -o "3" resources/digitfile.txt | wc -l)" threes"
ft=$(grep -o "4" resources/digitfile.txt | wc -l)" fours"
fif=$(grep -o "5" resources/digitfile.txt | wc -l)" fives"
six=$(grep -o "6" resources/digitfile.txt | wc -l)" sixs"
sev=$(grep -o "7" resources/digitfile.txt | wc -l)" sevens"
nin=$(grep -o "8" resources/digitfile.txt | wc -l)" eights"
ten=$(grep -o "9" resources/digitfile.txt | wc -l)" nines"

echo $zer, $ones, $twos, $th, $ft, $fif, $six, $sev, $nin, $ten

