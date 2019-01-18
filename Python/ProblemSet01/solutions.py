- ProblemSet01, January 03 2019
--sandya.nandakumar@accenture.com

/* <Question from the ProblemSet 01> */
ProblemSet01

1.)Write a program that examines three variables—x, y, and z— and prints the largest odd number among them. If none of them are odd, it should print a message to that effect.

x=int(input("enter : "))
y=int(input("enter : "))
z=int(input("enter : "))
li=[]
if(x%2!=0):
      print(x)
      li.append(x)
if(y%2!=0):
      print(y)
      li.append(y)
if(z%2!=0):
      print(z)
      li.append(z)
print li
b=max(li)
print b

o/p:
C:\Users\sandya.nandakumar\programs>python set1,1.py
enter : 57
enter : 109
enter : 55
57
109
55
[57, 109, 55]
109
.............................................................................................................................................

2.)Python provides a built-in function called len that returns the length of a string, so the value of len('Cigna') is 5. Write a function named right_justify that takes a string named s as a parameter and prints the string with enough leading spaces so that the last letter of the string is in column 70 of the display.

>>> right_justify('Cigna')

def left_justify(s):
    print "%70s" %s
x=left_justify("sandya")

o/p:
C:\Users\sandya.nandakumar\programs>python set1,1.py

                                                                sandya
.....................................................................................................................................................
																	
3.)Write a program that asks the user to input 10 integers, and then prints the largest odd number that was entered. If no odd number was entered, it should print a message to that effect.


s = raw_input()
num = map(int, s.split())
liO=[]
liE=[]
for i in num:
    if i%2!=0:
        liO.append(i)
    else:
        liE.append(i)

if len(liE)==10:
    print "There are no odd numbers"

elif len(liE)<10:
    print max(liO)


or

b=[]
odd=[]
for i in range(10):
   a=int(input("enter a value:")) 
b.append(a)
for i in range(10): 
if(b[i]%2!=0):     
odd.append(b[i])
print(b)
print(odd)
if not odd: 
 print("no odd numbers")
else:
 print(max(odd))

or


s = int(input("enter a value: ")
num = map(int, s.split())
liO=[]
for i in num:
    if i%2!=0:
        liO.append(i)
if not liO:
	print("no odd numbers")
else:
	print(max(liO))
   


    //1 3 5 3 6 8 9 1 2 8
      9

....................................................................................................................................................
4.)Practice using the Python interpreter as a calculator:

a) The volume of a sphere with radius r is 4/3pr3. What is the volume of a sphere with radius 5?
Hint: 392.7 is wrong!
b) Suppose the cover price of a book is Rs.24.95, but bookstores get a 40% discount. Shipping costs
Rs.3 for the first copy and 0.75p for each additional copy. What is the total wholesale cost for
60 copies?
c) If I leave my house at 6:52 am and run 1 mile at an easy pace (8:15 per mile), then 3 miles at
tempo (7:12 per mile) and 1 mile at easy pace again, what time do I get home for breakfast? 

A:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
import math
radius=int(input("Enter the radius"))
volume=(4.0/3.0)*(math.pi)*(radius**3)
print(volume)

B:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

MRP=24.95
Discount=MRP*.40
Shipping=.75
No_of_copies=59
first_copy=Discount+3
rest_of_the_copy=Discount+.75
rest_of_the_copy1=rest_of_the_copy*No_of_copies
total=rest_of_the_copy1+first_copy
print(total) 
 


.....................................................................................................................................................
5.)Write a program that asks the user to enter an integer and prints two integers, root and pwr, such that 0 < pwr < 6 and root**pwr is equal to the integer entered by the user. If no such pair of integers exists, it should print a message to that effect.

num=int(input("enter a number:"))
for i in range(1,6):
    root=num**(1/float(i))
    if(int(root)**i==num):
        pwr=i
        print("root is:",root)
        print("pwr is:",pwr)
	
o/p:	
enter a number:16                                                                                                              
root is: 16.0                                                                                                                  
pwr is: 1                                                                                                                      
root is: 4.0                                                                                                                   
pwr is: 2                                                                                                                      
root is: 2.0                                                                             
pwr is: 4                                                                                                                      
                                                                                                                              
.....................................................................................................................................................
6.)Let s be a string that contains a sequence of decimal numbers separated by commas, e.g., s = '1.23,2.4,3.123'. Write a program that prints the sum of the numbers in s.

a="1.5,1.9,2.10"
b=a.replace(","," ")
li=b.split()
print(li)
sum1=0
for i in li:
  sum1+=float(i)
print (sum1)

//5.5
  
....................................................................................................................................................

7.)Write a function isIn() that accepts two strings as arguments and returns True if either string occurs anywhere in the other, and False otherwise. Hint: you might want to use the built-in str operation in.


def isln(x,y):
  if x in y or y in x:
    return True
  else:
    return False
x="animal"
y="panimalar"
print(isln(x,y))

or 

a="panimalar"
b="animal"
def check(a,b):
    if(a.find(b)):
        print("match found")
    else:
        print("not found")
check(a,b)

//True

....................................................................................................................................................

8.)Implement a function that satisfies the specification. Use a try-except block.

def getRatios(vect1, vect2):
	"""Assumes: vect1 and vect2 are lists of equal length of numbers
	Returns: a list containing the meaningful values of
	vect1[i]/vect2[i]"""
Assume that we execute the following assignment statements: width = 17 height = 12.0 delimiter = '.' For each of the following expressions, write the value of the expression and the type (of the value of the expression).
>>> width/2            =8.5
>>> width/2.0          =8.5
>>> height/3           =4.0
>>> 1 + 2 * 5          =11
>>> delimiter * 5      =.....

.....................................................................................................................................................

