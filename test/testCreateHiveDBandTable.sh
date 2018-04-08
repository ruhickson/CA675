hive -e "CREATE DATABASE testca675db;" &&
hive -e "CREATE TABLE testca675db.measurements (capturetime STRING, latitude STRING, longitude  STRING, value STRING, unit  STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;"
