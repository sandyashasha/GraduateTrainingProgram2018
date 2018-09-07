def insert_fn(ind,val):
	try:
		final_ar.insert(ind,val)
		#print final_ar
	except Exception as e:
		print(e)
def append_fn(val):
	try:
		final_ar.append(val)
	except Exception as e:
		print(e)
def sort_fn():
	try:
		final_ar.sort()
	except Exception as e:
		print(e)
def pop_fn():
	try:
		final_ar.pop()
	except Exception as e:
		print(e)
def reverse_fn():
	try:
		final_ar.reverse()
	except Exception as e:
		print(e)
		
if __name__ == "__main__":
	try:		
		n = input('enter the number of commands :')
		final_ar = []
		for i in range(n):
			values = raw_input('Enter the command and value(s) :')
			ar = values.split(' ')
			#print(ar)
			ar[0] = ar[0].lower()
			if(ar[0] =='insert'):
				ar[1] = int(ar[1])
				ar[2] = int(ar[2])
				insert_fn(ar[1],ar[2])
			elif (ar[0]=='print'):
				print final_ar
			elif (ar[0] == 'append'):
				ar[1] = int(ar[1])
				append_fn(ar[1])
			elif (ar[0] == 'sort'):
				sort_fn()
			elif (ar[0] == 'pop'):
				pop_fn()
			elif (ar[0] == 'reverse'):
				reverse_fn()
			else:
				print('Enter the correct command')
	except Exception as e:
			print(e)