REGISTER /usr/lib/pig/piggybank.jar;
DEFINE CSVLoader org.apache.pig.piggybank.storage.CSVLoader();

dataset = LOAD '/home/cloudera/Desktop/CA675Assignment2/testmeasurements-out.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE')
 AS (capturetime:chararray, latitude:chararray,longitude:chararray, value:chararray, unit:chararray, locationname:chararray, deviceid:chararray, md5sum:chararray, height:chararray, surface:chararray, radiation:chararray, uploadtime:chararray, loaderid:chararray);

foreach_data = FOREACH dataset GENERATE capturetime,latitude,longitude,value,unit;

filtered_dataset = FILTER foreach_data BY unit == 'cpm'; 

dump filtered_dataset

-- filtered_dataset = FILTER foreach_data BY capturetime MATCHES '2017-*' AND unit == 'cpm';

-- STORE filtered_dataset INTO 'testca675db.measurements' USING org.apache.hive.hcatalog.pig.HCatStorer();