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
    e = 5
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
