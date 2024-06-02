#! /usr/bin/bash

for num_records in 1000 10000 100000 
do 
	echo "Generating data file with $num_records records"
	time ./generate-dataset.sh data_$num_records.txt $num_records
	
	echo "Sorting data file with $num_records records"
	time ./sort-data.sh data_$num_records.txt 
done
