import matplotlib.pyplot as plt
import sys 

# data for plotting
num_records = [1000, 10000, 100000]
generate_times = [sys.argv[1], sys.argv[2], sys.argv[3]]
sort_times = [sys.argv[4], sys.argv[5], sys.argv[6]]

# plotting 
plt.figure(figsize=(10, 6))

plt.plot(num_records, generate_times, marker='o', label='Generate Time')
plt.plot(num_records, sort_times, marker='o', label='Sort Time')

plt.title('Time taken to generate and sort the data')
plt.xlabel('Number of Records')
plt.ylabel('Time (sec)')
plt.xscale('log')
plt.yscale('log')
plt.xticks(num_records, num_records)
plt.grid(True, which="both", ls="--", lw=0.5)

plt.legend()
plt.tight_layout() 
plt.show()
