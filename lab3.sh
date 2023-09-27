#!/bin/bash
B="$1 $2"
awk -F '\t' -v N="$B" '{if($5==N){print $1,$2,$3,$4,$5,$6}}' prods
