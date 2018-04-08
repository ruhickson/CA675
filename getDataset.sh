mkdir /home/cloudera/Desktop/CA675Assignment2 &&
cd /home/cloudera/Desktop/CA675Assignment2/ &&
wget https://api.safecast.org/system/measurements.tar.gz &&
tar -xvzf measurements.tar.gz &&
rm measurements.tar.gz &&
head -1000 measurements-out.csv > testmeasurements-out.csv &&
echo "################################################################
#							                                   #
# measurements-out.csv and testmeasurements-out.csv is created #
#							                                   #
################################################################"


