#! /usr/bin/bash

start_time=$(date +%s.%N)

filename=$1
num_records=$2

generate_random_int() {
	echo $(( (RANDOM << 16) | RANDOM ))
}

generate_random_string() {
	tr -cd '[:print:]' < /dev/urandom | head -c 100
}

touch "$filename"

for _ in $(seq 1 "$num_records")
do 
	int1=$(generate_random_int)

	int2=$(generate_random_int)
	ascii_string=$(generate_random_string)
	echo "$int1 $int2 $ascii_string" >> "$filename"
done

num_lines=$(wc -l < "$filename")

end_time=$(date +%s.%N)
elapsed=$(echo "$end_time - $start_time" | bc)

if (( $(echo "$elapsed < 10" | bc -l) )) 
then 
	sleep $(echo "10 - elapsed" | bc)
fi 

echo "Dataset generated in $filename with $num_lines records in $elapsed seconds"
