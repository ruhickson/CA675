hive -e "CREATE DATABASE ca675db;" &&
hive -e "CREATE TABLE ca675db.measurements (capturetime STRING, latitude STRING, longitude  STRING, value STRING, unit  STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;"
