# Scratch Pad

1. [How to sort CSV file with first column](#sort_csv)
2. [Use SED/Grep command to delete empty lines](#deletempty)

## How to sort CSV file with first column <a name="sort_csv"></a>

Using Unix's sort command you can use the following to get the csv files sorted by first column. 

```bash
sort -s -n -k 1,1 7PZ00462.csv > 1_7PZ00462.csv
sort -s -n -k 1,1 7PZ00753.csv > 1_7PZ00753.csv
sort -s -n -k 1,1 7PZ00941.csv > 1_7PZ00941.csv
sort -s -n -k 1,1 7PZ01104.csv > 1_7PZ01104.csv
sort -s -n -k 1,1 7PZ01295.csv > 1_7PZ01295.csv
This could definitely be improved to pass the for loop or file list *
```

## Use SED/Grep command to delete empty lines <a name="deletempty"></a>

This command will delete the empty lines from the given file. 

```
sed '/^$/d' 1_7PZ00462.csv > 2_7PZ00462.csv
sed '/^$/d' 1_7PZ00753.csv > 2_7PZ00753.csv
sed '/^$/d' 1_7PZ00941.csv > 2_7PZ00941.csv

This could definitely be improved to pass the for loop or file list *
```
/d - deletes the line 


You can also use Grep to do the same. 

```
grep -v '^$' file.txt
```

-v reverses the pattern matching, so it selects all lines that are not empty.



