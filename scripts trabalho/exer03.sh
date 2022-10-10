#!/bin/bash

echo -e "3. Voo com maior atraso na saida"
cat 2006.csv | cut -d, -f16 | awk '$0>-1' | sort -nr | head -n1