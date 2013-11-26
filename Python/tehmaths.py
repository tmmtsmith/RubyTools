addme = [1,2,3,4,5,6,7,8,9,10]
def avg (x):
    d = len(x)
    y = 0
    for i in x:
        y += i
    print str(float(y)/d)
        
avg(addme)



def sma(x,p):
    b = (1 - 1)
    e = p
    end_all = len(x)
    while e <= end_all:
        new_list = x[b:e]
        sum_sma = 0
        for i in new_list:
            sum_sma += i
        print str(float(sum_sma)/p)
        b += 1
        e += 1
        
sma(addme,5)



def digit_sum(n):
    x = str(n)
    y = []
    for i in x:
        i = int(i)
        y.append(i)
    print sum(y)
    
digit_sum(434)



def factorial(x):
    i = 1
    while x >= 1:
        i = i * x
        x -= 1
    return i



def is_prime(x):
    if x < 2:
        return False

    for i in range(2, int(x ** 0.5) + 1):
        if x % i == 0:
            return False

    return True
