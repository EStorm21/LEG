#!/usr/local/bin/python2.7

import cPickle as pickle
import math

NUM_DIVISIONS = 60

def partition_size(states, partition):
	a,b = partition
	return states[b][0]-states[a][0]

def desired_partition_size(states, partitions, split_num):
	total_size = sum(partition_size(states, p) for p in partitions)
	num_partitions = NUM_DIVISIONS - split_num
	return total_size/num_partitions

# Note: first and last should be included in range
def find_largest_in_range(states, first, last):
	index, size = max([(i, states[i+1][0]-states[i][0]) for i in range(first,last)], key=lambda x:x[1])
	return index, size

def find_largest_chunk(states, partitions):
	index, size = max([(find_largest_in_range(states, p[0], p[1]-1)) for p in partitions], key=lambda x:x[1])
	return index, size

def split_partitions(partitions, start_split, end_split):
	new_partitions = []
	for pstart, pend in partitions:
		if pstart <= start_split and end_split <= pend:
			if pstart != start_split:
				new_partitions.append((pstart, start_split))
			if pend != end_split:
				new_partitions.append((end_split, pend))
		else:
			new_partitions.append((pstart,pend))
	return new_partitions

def even_split(partition, pieces):
	a,b = partition
	step = (b-a)/pieces
	return [int(a + math.floor(step*i)) for i in range(1, pieces)]

def do_main():
	states = pickle.load(open("output/divide_conquer_states.pickle",'r'))

	splits = set([0,len(states)-1])
	active_partitions = [(0,len(states)-1)]

	while True:
		# print "----"
		# print active_partitions, splits
		index, size = find_largest_chunk(states, active_partitions)
		desired_size = desired_partition_size(states, active_partitions, len(splits)-2)
		# print  index, size, desired_size
		if size > desired_size:
			split_start = index
			split_end = index+1
			active_partitions = split_partitions(active_partitions, split_start, split_end)
			splits.add(split_start)
			splits.add(split_end)
		else:
			break

	desired_size = desired_partition_size(states, active_partitions, len(splits)-2)
	# print [partition_size(states,p) for p in active_partitions]
	split_counts = [int(math.ceil(partition_size(states,p)/desired_size)) for p in active_partitions]

	# print desired_size
	# print split_counts

	final_splits = splits.union(*[set(even_split(p,splits+1)) for p,splits in zip(active_partitions, split_counts)])

	sorted_splits = sorted(final_splits)
	divisions = [(sorted_splits[i],sorted_splits[i+1]) for i in range(len(sorted_splits) - 1)]
	divs = "\n".join(["{},{}".format(states[a][1],states[b][1]) for a,b in divisions])
	return divs


if __name__ == '__main__':
	print do_main()
