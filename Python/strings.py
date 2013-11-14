word = "miscellaneous"

cnt = len(word)
word[1:] #iscellaneous
word[1:cnt] #iscellaneous

# Example:

ur_pyg = raw_input('Enter your pig latin ending:')
original = raw_input('Enter a word:')

if len(original) > 0 and original.isalpha():
    word = original.lower()
    first = word[0]
    if first == "a" or first == "e" or first == "i" or first == "o" or first == "u":
        new_word = word + ur_pyg
        print new_word
    else:
        sliced = original[1:]
        res = sliced + original[0] + ur_pyg
        print res
else:
    print 'Invalid entry.'



## String & Function example

def get_calories (c,p,f):
    c_cal = 4 * c
    p_cal = 4 * p
    f_cal = 9 * p
    x = (c_cal + p_cal + f_cal)
    per = macro_percent(c_cal,p_cal,f_cal,x)
    return "Calories for today: %s , breakdown by percent in carbs, protein and fat: %s" % (x,per)
    
def macro_percent(c,p,f,t):
    cm = (c/float(t))
    pm = (p/float(t))
    fm = (f/float(t))
    return cm, pm, fm
    
y = get_calories(200,200,100)
print y


##  Math example

def rate(n,o):
    n = float(n)
    o = float(o)
    x = (((n-o)/o)*100)
    return x


inf = rate(.03,.02)
print inf


## Double FOR with Math and Strings

gameone = {
    "samuel": 2,
    "thomas": 2,
    "nathan": 1,
    "joe": 0
}
    
gametwo = {
    "samuel": 1,
    "thomas": 2,
    "nathan": 0,
    "joe": 1
}

for i in gameone and gametwo:
    print i + " score in game one " + str(gameone[i]) + " and score in game two " + str(gametwo[i]) + " with a total score of " + str((gameone[i] + gametwo[i]))
