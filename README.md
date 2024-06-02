# hw-linux-and-tools

## Question 2a. 
To run the script to complete even if ssh (or bash) session is terminated, use the following command: 
```
  nohup ./generate-dataset.sh [filename].txt [number of records] &
```
`nohup`command keeps the processes running even after the shell termination

`&` makes sure that shell doesn't wait for the command to finish

-------------
The script will generate 2 files: 
- `[filename].txt` - contains the actual dataset 
- `nohup.out` - contains info about filename, number of records in the dataset, and execution time.
  
![image](https://github.com/udig-v/hw-linux-and-tools/assets/107013004/49cd3290-5ece-4f2f-9b26-916834b1bf26)

## Question 2b.
To run the script and note the time it takes to execute, use the following command: 
```
  time ./sort-data.sh [filename].txt
```
`[filename].txt` should correspond to the file generated in Question 2a. 

----------------
The script will generate `[filename]_sorted.txt]` output file, which will contain sorted dataset. 

Execution time will be printed to the terminal. 

![image](https://github.com/udig-v/hw-linux-and-tools/assets/107013004/993a43ed-500d-4cca-bcb0-f8dc4df0a815)


## Question 2c. 
