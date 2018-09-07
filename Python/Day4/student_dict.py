count = int(raw_input('Enter the no of students'))
mark_count = int(raw_input('Enter the no of marks'))
m = []
stu = {}
for i in range(count):
	key = raw_input('Enter the student name :')
	for  j in range(mark_count):
		mark = input('enter the mark :')
		m.append(mark)
	stu[key] = m
	m= []
print(stu)	

for k,v in stu.iteritems():
	if isinstance(v,list):
		sums = sum(v)
		avg = sums/len(v)
		print k,"Total :",sums,"Average :",avg