number = input('Enter no of students')
stu_dict = {}
for i in range(number):
	ip= raw_input('Enter student name and marks')
	ar = ip.split(' ')
	mark = []
	key = ar.pop(0)
	for j in range(len(ar)):
		mark.append(int(ar[j]))
	avg  = sum(mark)/len(mark)
	mark.append(avg)
	stu_dict[key] = mark
student_name = raw_input('Enter the student name')
print "Average of ", student_name," is :",stu_dict[student_name][3]
