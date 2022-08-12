Historial3 = (9530,4120,4580,1500,890,7516,426)

promedio = (round(sum(Historial3)/len(Historial3)))

if promedio > 4500:
    print("Se ha excedido del gasto promedio para su mascota")

print("El promedio de gastos de Lennon es de: $",promedio,sep="")