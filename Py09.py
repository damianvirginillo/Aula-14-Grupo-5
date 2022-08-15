Historial5 = (8520, 9510, 7530, 3570, 1590)

def Vmin(valor):
    q = 0
    r = 0
    for i in valor:
        if i > q:
            r = i
        q = i

    print("El valor maximo gastado en Toto fue: $",r,sep="")

Vmin(Historial5)
