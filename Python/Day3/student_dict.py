stu_dict = {'Gokul':[95,85,80],'Velusaamy':[100,88,85]}

print "Student Name   Total   Average"
print "=============================="
for k,v in stu_dict.iteritems():
	if isinstance(v,list):
		sums = sum(v)
		avg = sums/len(v)
		print k,"      ",sums,"    ",avg
		
