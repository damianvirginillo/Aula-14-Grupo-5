Historial2 = (23500, 5960, 2300, 10200, 8900)

total = 0 

for i in Historial2:
    
    total += i

def cost_sup(gasto):

    for i in gasto:

        if i > 5000:
            
            print(i)

print("Gastos superiores a $5mil: ")

cost_sup(Historial2)

print("El gasto total de Frida fue: $",total)

