def er_handle(a,b):
	try:	
		c = int(a)/int(b)
		print(c)
	except Exception as e:
		print(e)

try:
	n = input('Enter the number of time inputs :')
	if n>0 and n<10:
		for i in range(n):
			x = raw_input('Enter 1st number')
			y = raw_input('Enter 2nd number')
			er_handle(x,y)
except Exception as e:
	print(e)