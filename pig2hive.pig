REGISTER /usr/lib/pig/piggybank.jar;
DEFINE CSVLoader org.apache.pig.piggybank.storage.CSVLoader();

dataset = LOAD '/home/cloudera/Desktop/CA675Assignment2/measurements.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE')
 AS (capturetime:chararray, latitude:chararray,longitude:chararray, value:chararray, unit:chararray, locationname:chararray, deviceid:chararray, md5sum:chararray, height:chararray, surface:chararray, radiation:chararray, uploadtime:chararray, loaderid:chararray);

filtereddataset = FILTER dataset BY (capturetime MATCHES '2017-*') AND unit == 'cpm';

foreach_data = FOREACH filtereddataset GENERATE capturetime,latitude,longitude,value,unit;
 //REPLACE(REPLACE(REPLACE(REPLACE(capturetime, ',', ';'),'\n',' '),'\r',''),'\r\n','') AS capturetime;
 //REPLACE(REPLACE(REPLACE(REPLACE(latitude, ',', ';'),'\n',' '),'\r',''),'\r\n','') AS latitude;
 //REPLACE(REPLACE(REPLACE(REPLACE(longitude, ',', ';'),'\n',' '),'\r',''),'\r\n','') AS longitude;
 //REPLACE(REPLACE(REPLACE(REPLACE(value, ',', ';'),'\n',' '),'\r',''),'\r\n','') AS value;
 //REPLACE(REPLACE(REPLACE(REPLACE(unit,',', ';'),'\n',' '),'\r',''),'\r\n','')  AS unit;

STORE foreach_data INTO 'ca675db.measurements' USING org.apache.hive.hcatalog.pig.HCatStorer();