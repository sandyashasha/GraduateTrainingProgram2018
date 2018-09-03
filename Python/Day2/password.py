password = raw_input('Enter the password')

spec_ar = ['!','@','#','$','%','^','&','*','(',')','-','+','=',';','[',']','{','}',':','/',',','.','?',"'",'"']

caps_count = 0
small_count = 0
special = 0
numbers = 0

for i in password:
	if i.isupper():
		caps_count+=1
	
	elif i.islower():
		small_count+=1
	
	elif i.isdigit():
		numbers+=1
	
	elif i in spec_ar:
		special+=1

		
'''print('Caps',caps_count)
print('Small',small_count)
print('Number',numbers)
print('Special',special)'''		
		
if((caps_count and small_count and numbers and special)>=1):		
	print("It is a strong password")
else:
	print("It is a weak password")