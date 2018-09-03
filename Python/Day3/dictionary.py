inventory = {'gold' : 500,'pouch' : ['flint', 'twine', 'gemstone'],'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']}

#i)Add a key to inventory called 'pocket'.
inventory['pocket'] = ['seashell', 'strange berry','lint']

print "Adding 'pocket' key and values: \n", inventory

#Sorting 'backpack' key
inventory['backpack'].sort()
print "Sorting 'backpack' key: \n" ,inventory['backpack']

#Removing dagger
inventory['backpack'].remove('dagger')
print "Removing 'dagger': \n" ,inventory['backpack']

inventory['gold'] = 50

print "Altering 'gold' value to 50: \n",inventory