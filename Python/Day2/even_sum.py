ar = []
even_array = []
print('Enter 10 Numbers')
for i in range(10):
	a = input()
	ar.append(a)
	
total = 0
for  i in ar:
	if i%2==0:
		total+=i

print "Even Numbers sum is",total