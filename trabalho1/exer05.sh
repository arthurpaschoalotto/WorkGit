#!/bin/bash

echo -e "5. Quantidade de voos redirecionados"
cat 2006.csv | cut -d, -f24 | awk '{SUM += $1} END {print SUM}'

