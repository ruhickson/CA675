hive -e "SELECT latitude, longitude, value FROM testca675db.measurements" | sed 's/[\t]/,/g >> cleaned_test_measurements.csv
