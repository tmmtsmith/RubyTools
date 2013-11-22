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


## Lists and rows in a list

s = []
for x in range(0,13):
    s.append(["O"] * 7)
    
t = []
for x in range(0,9):
    t.append(["0"] * 12)

def pb(b):
    for row in b:
        print row

# 7 columns, 13 rows
print pb(s)
# 12 columns, 9 rows
print pb(t)


# "Where's the Tiger?" game example from CodeAc:

from random import randint

board = []

for x in range(5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print "Where's the tiger?"
print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

tig_row = random_row(board)
tig_col = random_col(board)
# Debugging
#print tig_row
#print tig_col

for turn in range(4):
    guess_row = int(raw_input("Guess Row:"))
    guess_col = int(raw_input("Guess Col:"))
    
    if guess_row == tig_row and guess_col == tig_col:
        print "There he is!"
        break
    else:
        if turn == 3:
            print "Game Over"
        elif (guess_row < 0 or guess_row > 4) or (guess_col < 0 or guess_col > 4):
            print "He's not in the ground."
        elif(board[guess_row][guess_col] == "X"):
            print "You already tried to find him there."
        else:
            print "Miss!"
            board[guess_row][guess_col] = "X"
        print_board(board)
    print str(turn + 1)
    
    
# Using dictionaries to replace characters in strings

dict = {'a': 2, 'b': 6, 'c': 4}
string = "ax + bx + c"
       
for c in string:
    for key in dict:
        if c == key:
            x = str(dict[key])
            string = string.replace(c,x)
print string
    
