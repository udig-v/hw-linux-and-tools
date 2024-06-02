# hw-linux-and-tools

## Question 2a. 
To run the script to complete even if ssh (or bash) session is terminated, use the following command: 
```
  nohup ./generate-dataset.sh [filename].txt [number of records] &
```
`nohup`command keeps the processes running even after the shell termination;

`&` makes sure that shell doesn't wait for the command to finish

## Question 2b.

## Question 2c. 
