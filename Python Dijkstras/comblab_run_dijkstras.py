from comblab_functions import*


# create network object
test = Network()

# read in and set up the test network
test.read_network(filename='test_network.txt')
	
# RUN your shortest path algorithm
distance, shortest_path = dijkstra(network=test, source_name='A', destination_name='F')

# check that it PASSES the asserts below
	# correct path length
assert(distance == 7)
	# correct path
assert(all([p1==p2 for p1,p2 in zip(shortest_path, ['A','B','C','E','F'])]))

print(distance)
print(shortest_path)

