string = raw_input('Enter a string :')

caps = [i for i in string if i.isupper()]
lower = [i for i in string if i.islower()]

caps_count = len(caps)
lower_count = len(lower)

print "UPPER CASE ",caps_count
print "LOWER CASE ",lower_count