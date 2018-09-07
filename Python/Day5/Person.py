class Person:
	pass

class Male(Person):
	def getGender(self):
		print "Male"

class Female(Person):
	def getGender(self):
		print "Female"

if __name__ == "__main__":
	p = Person()
	m = Male()
	f = Female()
	
	m.getGender()
	f.getGender()