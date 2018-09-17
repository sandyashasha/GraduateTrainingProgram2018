'''md- main directory, sd- sub directory ul -unique list '''
import os

class Directory:
	def list_dir(self,paths):
		d = os.listdir(paths)
		self.md= []
		self.sd = []
		self.ul = []
		cnt = 0
		#print d
		
		for i in d:
			if os.path.isfile(os.path.join(paths,i)):
				self.md.append(i)
				cnt+=1
			else:
				self.sd = os.listdir(os.path.join(paths,i))
				cnt+=len(self.sd)
		print "Files in Directory :",self.md
		print "Files in Sub directory :",self.sd
		
		for i in self.md+self.sd:
			if i not in self.ul:
				self.ul.append(i)
				
		print "No. of Unique Files is :",len(self.ul)
		return cnt
		
	def txt_files(self,paths):
		txt_count = 0
		for i in self.md+self.sd:
			if i.endswith('txt'):
				txt_count+=1
		return txt_count
		
if __name__ =="__main__":
	obj = Directory()
	paths = raw_input('Enter the path :')
	counts = obj.list_dir(paths)
	
	print "Count is :",counts
	
	txt_cnt = obj.txt_files(paths)
	print 'Number of txt files is :',txt_cnt
