#!/bin/bash

echo '7. Total de atrasos da decolagem de vôos no aeroporto JFK, de Nova Iorque.'

cat 2006.csv | cut -d, -f17,16 | grep JFK | cut -d, -f1 | grep -v "-" | grep -v NA | awk '{SUM += $1} END {print SUM}'
