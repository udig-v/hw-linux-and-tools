# hw-linux-and-tools

## Question 2a. 
To run the script to complete even if ssh (or bash) session is terminated, use the following command: 
```
  nohup ./generate-dataset.sh [filename].txt [number of records] &
```
`nohup`command keeps the processes running even after the shell termination

`&` makes sure that shell doesn't wait for the command to finish

The code above will generate 2 files: 
- `[filename].txt` - contains the actual dataset 
- `nohup.out` - contains info about filename, number of records in the dataset, and execution time. 
![image](https://github.com/udig-v/hw-linux-and-tools/assets/107013004/49cd3290-5ece-4f2f-9b26-916834b1bf26)

## Question 2b.

## Question 2c. 
