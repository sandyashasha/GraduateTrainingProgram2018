science = 50
maths = 90
english = 85
tamil = 92

with open('marks.txt','w') as f:
	f.write('{} '.format(science))
	f.write('{} '.format(maths))
	f.write('{} '.format(english))
	f.write('{}'.format(tamil))	
with open('marks.txt','r') as fin:
	mark = map(int,fin.read().split(' '))

total = sum(mark)
print "Total Marks is: ",total

f.close()