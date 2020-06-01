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


````
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                    _                                                                                   _     _   _
                                   (_)                                                                                 | |   | | (_)
   ___   _   _    __ _  __      __  _   _ __      ______      ___    ___    _ __ ___    _ __ ___     __ _   _ __     __| |   | |  _   _ __     ___
  / __| | | | |  / _` | \ \ /\ / / | | | '_ \    |______|    / __|  / _ \  | '_ ` _ \  | '_ ` _ \   / _` | | '_ \   / _` |   | | | | | '_ \   / _ \
 | (__  | |_| | | (_| |  \ V  V /  | | | | | |              | (__  | (_) | | | | | | | | | | | | | | (_| | | | | | | (_| |   | | | | | | | | |  __/
  \___|  \__, |  \__, |   \_/\_/   |_| |_| |_|               \___|  \___/  |_| |_| |_| |_| |_| |_|  \__,_| |_| |_|  \__,_|   |_| |_| |_| |_|  \___|
          __/ |   __/ |
         |___/   |___/
  _                 _             _   _           _     _                                     _
 (_)               | |           | | | |         | |   (_)                                   | |
  _   _ __    ___  | |_    __ _  | | | |   __ _  | |_   _    ___    _ __       __ _   _ __   | |_   ______    ___   _   _    __ _
 | | | '_ \  / __| | __|  / _` | | | | |  / _` | | __| | |  / _ \  | '_ \     / _` | | '_ \  | __| |______|  / __| | | | |  / _` |
 | | | | | | \__ \ | |_  | (_| | | | | | | (_| | | |_  | | | (_) | | | | |   | (_| | | |_) | | |_           | (__  | |_| | | (_| |
 |_| |_| |_| |___/  \__|  \__,_| |_| |_|  \__,_|  \__| |_|  \___/  |_| |_|    \__,_| | .__/   \__|           \___|  \__, |  \__, |
                                                                                     | |                             __/ |   __/ |
                                                                                     |_|                            |___/   |___/
                                                                                     
````

lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin

install anything
apt-cyg install nano



