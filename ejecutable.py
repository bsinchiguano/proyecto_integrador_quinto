import csv
import time


archivo2 = open('productos.csv','w')
archivo2.write("sku"+","+"producto"+","+"valor"+'\n'+'p01'+","+'Harina'+","+'0.5'+'\n'+'w1'+","+'Yuca'+","+'0.45'+'\n'+'w3'+","+'Papas'+","+'0.5'+'\n'+'p03'+","+'Arroz'+","+'0.60'+'\n')
archivo2.close()
def menu():

    print("SUPER MERCADO")
    print("1.- Nueva venta")
    print("2.- Ver productos")
    print("3.- Reporte ventas")


while True:

    menu()

    opcionMenu = input("Inserte una opcion: \t")

    if opcionMenu == "1":

        def menu1():
            print("OPCIONES")
            print("\t 1  Agregar Productos")
            print("\t 2  Finalizar")
            print("\t 3 Salir")
        while True:
            menu1()
            opcionMenu1 = input("Inserte una opcion: \t")

            if opcionMenu1 == "1":
             nom=input("Ingrese nombre: ")
             print("DATOS DEL PRODUCTO")
             lista = []
             cont = 0
             cod = input("Ingrese el codigo: ")
             cant = float(input("Ingrese la cantidad: "))
             with open('productos.csv') as file:
                 a = csv.DictReader(file)
                 for i in a:
                     if cod == i['sku']:
                         va = float(i['valor'])
                         tot = cant * va
                         cont += tot
                         lista += [i['producto'], i['valor'], tot]
                         print("")
                         print("")
                         print("---DATOS DE LA FACTURA---")
                         print(nom)
                         print([i['producto'], i['valor'], tot])
            input("Has pulsado la opción 1...")

            break

    elif opcionMenu == "2":
        with open('/home/sistemas/PycharmProjects/practica4/venv/productos.csv', newline='') as File:
            reader = csv.reader(File)
            for row in reader:
                print(row)
        input("Has pulsado la opción 2...")
    elif opcionMenu == "3":

        print(time.strftime("%d/%m/%y") ,nom, tot)

        input("Has pulsado la opción 3...")

    elif opcionMenu == "9":

        break

    else:

        print ("")

        input("No has pulsado ninguna opción correcta...")


