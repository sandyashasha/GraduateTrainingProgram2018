1.The greatest common divisor (GCD) of a and b is the largest number that divides both of them with no remainder. 
One way to find the GCD of two numbers is based on the observation that if r is the remainder when a is divided by b, then gcd(a, b) = gcd(b, r). 
As a base case, we can use gcd(a, 0) = a.Write a function called gcd that takes parameters a and b and returns their greatest common divisor.


def gcd(a,b): 
    if(b==0): 
        return a 
    else: 
        return gcd(b,a%b) 
a=60
b= 48
print("The gcd of 60 and 48 is : ")
print(gcd(a,b)) 

//12

...................................................................................................................................................
2.A number, a, is a power of b if it is divisible by b and a/b is a power of b. 
Write a function called is_power that takes parameters a and b and returns True if a is a power of b.
 Note: you will have to think about the base case.

def is_power(a,b):
    if(a%b != 0):
        return False
    elif(a/b == 1):
        return True
    else:
        return is_power(a/b,b)
print(is_power(8,2))


//True

...............................................................................................................................................
3.  Observe the following function definitions. 
They Calculate the Factorial as per the Mathematical definition 1! = 1 (n + 1)! = (n + 1) * n! 
Implement factI(n) as an Iterative Implementation & factR(n) as a Recursive Implementation

def factI(n):
	"""Assumes that n is an int > 0
	Returns n!
	Uses Iterative Implementation"""
	
def factR(n):
	"""Assumes that n is an int > 0
	Returns n!
	Uses Recursive Implementation"""


def factI(n):
	fact=1
	for i in range(1,n+1):
  		fact=fact*i;
	return(fact)
n=input("enter the user input:")
print(factI(n))



def factR(n):  
   if n == 1:  
       return n  
   else:  
       return n*factR(n-1)   
n = int(input("Enter a number: "))    
if n < 0:  
   print("Sorry, factorial does not exist for negative numbers")  
elif n == 0:  
   print("The factorial of 0 is 1")  
else:  
   print("The factorial of",n,"is",factR(n)) 



enter a number:5
//120
.........................................................................................................................................................
4.Write a program that computes the decimal equivalent of the binary number 10011?

int('10011', 2)


//19
...................................................................................................................
5. Implement a function that meets the specification below. Use a try-except block.

def sumDigits(s):
	"""Assumes s is a string
	Returns the sum of the decimal digits in s
	For example, if s is 'a2b3c' it returns 5"""


s=input("enter the input with digits and stringd:")
  def sumDigits(s):
    new_list = [x for x in s if x.isdigit()]
    s=list(map(int,new_list))
    print(new_list)
    print(s)
    b=sum(s)
    return(b)
  print(sumDigits(s))



//enter the input with digits and stringd: ab6k12
['6', '1', '2']
[6, 1, 2]
9


....................................................................................................................................................
6. Implement a function that satisfies the specification. Use a try-except block.
def findAnEven(l):
	"""Assumes l is a list of integers
	Returns the first even number in l
	Raises ValueError if l does not contain an even number"""

s = input()
num = list(map(int, s.split(',')))
def findAnEven(num):      
  for i in range(1,len(num)+1):
    if(i%2==0):
      
      break
  return(i)
print(findAnEven(num))



//1,2,3,4
  2
.........................................................................................................................................................................

7. A palindrome is a word that is spelled the same backward and forward, like "Malayalam" and "Noon" .
 Recursively, a word is a palindrome if the first and last letters are the same and the middle is a palindrome. 
Write a function called is_palindrome that takes a string argument and returns True if it is a palindrome and False otherwise. Remember that you can use the built-in function len to check the length of a string.
Use the function definition
def isPalindrome(s):
	"""Assumes s is a str
	Returns True if s is a palindrome; False otherwise.
	Punctuation marks, blanks, and capitalization are
	ignored."""
Ensure you build a test function testIsPalindrome() that tests your palindrome function.


a=raw_input()
s=""
for i in a:
    if (i.isalpha())==True:
        s+=i
    else:
        pass
s1=s.lower()
s2=s1
s1=list(s1)
rev=""
for i in range(len(s1)-1,-1,-1):
    rev+=s1[i]
if (s2==rev):
  
    print "Palindrome"
else:
    print "Not a Palindrome"

//M,ada m
palindrome

........................................................................................................................................................
9.One way of computing square roots is Newton’s method. Suppose that you want to know the square root of a. If you start with almost any estimate, x, you can compute a better estimate with the following formula: y = (x + a/x)/2 For example, if a is 4 and x is 3:

a) Write a function NewtonSqrt() to abstract the Newton's Method of calculation Square roots.


n=int(raw_input())
app=n/float(2)
ba=(app+(n/app))/float(2)
while app!=ba:
    app=ba
    ba=(app+(n/app))/float(2)
print ba

...................................................................................................................
