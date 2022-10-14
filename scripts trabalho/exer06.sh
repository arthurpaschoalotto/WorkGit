echo "6. Atraso total Delta Air Line"

c=$(cat 2006.csv | cut -d, -f9,15 | grep DL | cut -d, -f2 | grep -v '-' | awk -F, 'length>NF+1' | awk '{SUM += $1} END {print SUM}')
d=$(cat 2006.csv | cut -d, -f9,16 | grep DL | cut -d, -f2 | grep -v '-' | awk -F, 'length>NF+1' | awk '{SUM += $1} END {print SUM}')
echo $((c))
echo $((d))
echo $((c+d))
