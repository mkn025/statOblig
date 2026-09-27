import matplotlib.pyplot as plt





def f(x):
    return (6/100) * ((1-(x/100))**5)

def h(x):
    return (6/100) * ((x/100)**5)

def g(x):
    return   (f(x) * 1/2 ) + (h(x) * 1/2)

svar = (f(25)* (1/2)) / (g(25))
print(svar) 





a = [g(n) for n in range(1,99)]
b = [  n  for n in range(1,99)]


plt.plot(b,a)
plt.show()

















