ar = []
even_array = []
total = 0

print('Enter 10 Numbers')
for i in range(10):
	a = input()
	ar.append(a)
	if a%2 ==0:
		total+=a
		
print "Even Numbers sum is",total
