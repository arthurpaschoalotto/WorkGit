#!/bin/bash

echo -e "2. Voo com maior atraso chegada"
cat 2006.csv | cut -d, -f15 | awk '$0>-1' | sort -nr | head -n1