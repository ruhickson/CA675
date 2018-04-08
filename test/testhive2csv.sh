hive -e "SELECT latitude, longitude, value FROM testmeasurements" | sed 's/[\t]/,/g >> cleaned_measurements.csv
