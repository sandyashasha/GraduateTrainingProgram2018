first = raw_input("Enter First Name :")
last = raw_input("Enter Last Name :")
full_name = first+" "+last
print "Full Name is :",full_name

name = raw_input('Enter your Full Name :')
age = int(raw_input('Enter your Age :'))
first_name = name[0:5]
last_name = name[6::]
print("First Name is %s"%first_name)
print("Last Name is %s"%last_name)
print "Age is :",age


arr=[]
d = raw_input('Enter your date of birth :')
ar = [int(i) for i in d if i.isdigit()]
#res =sum([int(i) for i in d if i.isdigit()])
res = str(sum(ar))
for i in res:
	arr.append(int(i))
if(len(arr)>1):
	final_res = sum(arr)
	print(final_res)
else:
	print(res)
	
	
a,b,c = input('Enter three numbers')
ar = [a,b,c]
res = 0
if(len(ar) != len(set(ar))):
	print "Sum is :", res
else:
	res = sum(ar)
	print "Sum is :", res
