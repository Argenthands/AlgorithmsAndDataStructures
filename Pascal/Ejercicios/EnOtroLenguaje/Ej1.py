'''Crea un programa en Pascal que lea una lista de calificaciones (números enteros) desde un archivo de texto llamado problema1.txt, calcule el promedio de estas calificaciones y determine cuántos estudiantes obtuvieron una calificación mayor o igual al promedio. El programa debe mostrar el promedio y el número de estudiantes que superaron o igualaron el promedio.


¿Cuántos estudiantes han obtenido una calificación mayor o igual al promedio?
'''

Notas = 'PROBLEMA1.txt'
NotaAcumulada = 0
TotalNotas = 0
notas = []

# Abrir el archivo en modo lectura
with open(Notas, 'r') as archivo:
    # Leer el archivo línea por línea
    for line in archivo:
        Nota = int(line.strip())
        notas.append(Nota)
        NotaAcumulada += Nota
        TotalNotas += 1

# Calcular el promedio de las notas
promedio = NotaAcumulada / TotalNotas

# Contar cuántos estudiantes tienen una nota mayor al promedio
estudiantes_mayor_promedio = sum(1 for nota in notas if nota > promedio)

print("Promedio de las notas:", promedio)
print("Cantidad de estudiantes con nota mayor al promedio:", estudiantes_mayor_promedio)
