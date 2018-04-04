hive -e "SELECT latitude, longitude, value FROM measurements" | sed 's/[\t]/,/g >> output_file.csv
