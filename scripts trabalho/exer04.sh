echo -e "05. Voo mais longo"
cat 2006.csv | cut -d, -f7 | awk '$0>-1' | sort -nr | head -n1
