""" This is a python file"""
def hasNumber(string):
    try:

        return any(i.isdigit() for i in string)
    except Exception as error:
        print(error)


try:
    WORD = raw_input('Enter the Full Name :')
    if len(WORD) < 1000:
        WORD_AR = WORD.split(' ')
        # print(WORD_ar)
        new_WORD = []
        for i in WORD_AR:
            A = hasNumber(i)
            if A:
                new_WORD.append(i)
            else:
                new_WORD.append(i.capitalize())
        FULL_NAME = " ".join(new_WORD)
        print(FULL_NAME)
    else:
        print('Given String elngth is more than 1000 characters')
except Exception as ERROR:
    print(ERROR)
