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
