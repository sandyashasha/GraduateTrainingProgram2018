class Shape:
	def area(self):
		print "Shape by Default :0"

class Square(Shape):
	def __init__(self,length):
		self.length = length
	def area(self):
		print "Area of Square is :",(self.length)**2
		
if __name__ =="__main__":
	s = Shape()
	s.area()
	ip = input('Enter the value for Square :')
	sq = Square(ip)
	sq.area()
