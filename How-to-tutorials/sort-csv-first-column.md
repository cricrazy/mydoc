## How to sort CSV file with first column

Using Unix's sort command you can use the following to get the csv files sorted by first column. 

```bash
sort -s -n -k 1,1 7PZ00462.csv > 1_7PZ00462.csv
sort -s -n -k 1,1 7PZ00753.csv > 1_7PZ00753.csv
sort -s -n -k 1,1 7PZ00941.csv > 1_7PZ00941.csv
sort -s -n -k 1,1 7PZ01104.csv > 1_7PZ01104.csv
sort -s -n -k 1,1 7PZ01295.csv > 1_7PZ01295.csv
This could definitely be improved to pass the for loop or file list *
```