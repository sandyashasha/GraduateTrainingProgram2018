stu_dict = {'student1':[95,85,80],'student2':[100,88,85]}

print "Student Name   Total   Average"
print "=============================="
for k,v in stu_dict.iteritems():
	if isinstance(v,list):
		sums = sum(v)
		avg = sums/len(v)
		print k,"      ",sums,"    ",avg
		