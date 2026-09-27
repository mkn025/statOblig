
lst = [[0.1,0.2,0.05]
      ,[0.11,0.12,0.17]
      ,[0.11,0.06,0.08]] 



def f(x,y,value):
    return (x-0.9)*(y-0.98)*value


def calcuate(lst):
    a = 0
    for x in range(len(lst)):
        for y in range(len(lst[0])):
            a += f(x,y,lst[x][y])
    return a


print(calcuate(lst))






