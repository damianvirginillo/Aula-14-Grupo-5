Historial4 = (7510,7960,76180,800,4100)

def Vmin(valor):
    v = 0
    t = 0

    for i in valor:

        if v > i:
            t = i

        v = i

    print("El valor minimo gastado en Lennon fue de: $",t,sep="")

Vmin(Historial4)

