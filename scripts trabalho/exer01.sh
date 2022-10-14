#!/bin/bash
echo '1. Consultar quantidade de atrasos de uma determinada companhia.'

a=$(cat 2006.csv | cut -d, -f9,15 |grep $1 | grep -v '-' | grep -v ',0.0' | awk -F, 'length>NF+1' | wc -l)
b=$(cat 2006.csv | cut -d, -f9,16 |grep $1 | grep -v '-' | grep -v ',0.0' | awk -F, 'length>NF+1' | wc -l)
echo ${a}
echo ${b}
echo $((a+b))
