11_ifelse.sh                                                                                        0000755 0001750 0001750 00000001436 14306667310 014515  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
notaClase=0
edad=0


echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9):" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cúal es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona no puede sufragar"
else
    echo "La persona puede sufragar"
fi


## Ejemplo de la sentencia case ifelse
echo "Ejemplo Sentencia If -else"
read -p "Indique cúal es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
                                                                                                                                                                                                                                  12_ifAnidados.sh                                                                                    0000755 0001750 0001750 00000001110 14306670315 015274  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de los ifs anidados

notaClase=0
continua=""

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -n1 -p "Si va continuar estudiando en el siguiente nivel (s/n):" continua
    if [ $continua = "s" ]; then
        echo  -e "\n Bienvenido al siguiente nivel"
    else
        echo   -e  "Gracias por trabajar con nosotros, mucha suerte !!!"
    fi    
else
    echo  -e  "El alumno reprueba la materia"
fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                        13_expresionasCondicionales.sh                                                                      0000755 0001750 0001750 00000001663 14306670477 020315  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su país:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de América"
else
    echo "Se desconoce la nacionalidad"
fi



echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else 
    echo "El directorio $pathArchivo no existe"
fi    
                                                                             14_case.sh                                                                                          0000755 0001750 0001750 00000000651 14306710062 014153  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Marco Toscano Freire - @martosfre


opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación Guardar Arhivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") "Opción Incorrecta"
esac    
                                                                                       15_array.sh                                                                                         0000755 0001750 0001750 00000001737 14306710060 014363  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el uso de los arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Números:${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números:${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Números:${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de números, cadenas de rango
echo "Posición 3 Arreglo de Números:${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos:${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Tamaño arreglo de Números:${#arregloNumeros[*]}"                                 16_forLoop.sh                                                                                       0000755 0001750 0001750 00000001207 14306710545 014666  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Marco Toscano Freire - @martosfre

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Número:$num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

echo "Iterar en Archivos"
for fil in *
do
    echo "Nombre archivo:$fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo:$fil"
done

echo "Iterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "Número;$i"
done
                                                                                                                                                                                                                                                                                                                                                                                         17_whileLoop.sh                                                                                     0000755 0001750 0001750 00000000303 14306711125 015200  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done                                                                                                                                                                                                                                                                                                                             18_loopsAnidados.sh                                                                                 0000755 0001750 0001750 00000000315 14306711347 016047  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el uso de los loops anidados

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done                                                                                                                                                                                                                                                                                                                   19_breakContinue.sh                                                                                 0000755 0001750 0001750 00000000556 14306711611 016043  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el uso de break y continue

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done                                                                                                                                                  20_menuOPciones.sh                                                                                  0000755 0001750 0001750 00000002300 14306712005 015631  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa que permite manejar las utilidades de Postres

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres....."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalar postgres...."
            sleep 3
            ;;
        3) 
            echo -e "\nSacar respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5)  
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done                                                                                                                                                                                                                                                                                                                                    21_archivosDirectorios.sh                                                                           0000755 0001750 0001750 00000000536 14306712355 017274  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar la creación de archivos y directorios

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $1"
 fi                                                                                                                                                                  22_writeFile.sh                                                                                     0000755 0001750 0001750 00000000307 14306712731 015174  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adición multilínea
cat <<EOM >>$1
$2
EOM                                                                                                                                                                                                                                                                                                                         23_leerArchivo.sh                                                                                   0000755 0001750 0001750 00000000655 14306713216 015513  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como se lee en un archivo

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1                                                                                    24_fileOperation.sh                                                                                 0000755 0001750 0001750 00000000633 14306714456 016054  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar los archivos .txt"
rm *.txt
                                                                                                     25_tar.sh                                                                                           0000755 0001750 0001750 00000000257 14306715132 014035  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

                                                                                                                                                                                                                                                                                                                                                 27_pbzip.sh                                                                                         0000755 0001750 0001750 00000000520 14306715550 014372  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                3_tipoOperadores.sh                                                                                 0000755 0001750 0001750 00000001511 14306636201 016153  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            #! /bin/bash

numA=10
numB=4

echo "operadores Arimeticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relaciones"
echo "Números: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nOperadores Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicación A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "Residuo A %= B" $((numA %= numB))                                                                                                                                                                                       4_argumentos.sh                                                                                     0000755 0001750 0001750 00000000331 14306636704 015350  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            #! /bin/bash

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"                                                                                                                                                                                                                                                                                                       5_sustitucionComandos.sh                                                                            0000755 0001750 0001750 00000000521 14306637247 017246  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para revisar como ejecutar comados dentro de un programa y almacenar en una variable para su posterior utilización 
# Autor: Marco Toscano Freire - @martosfre

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"                                                                                                                                                                               6_readEcho.sh                                                                                       0000755 0001750 0001750 00000000552 14306640001 014666  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando echo, read y $REPLY

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"                                                                                                                                                      7_read.sh                                                                                           0000755 0001750 0001750 00000000503 14306640223 014072  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$option , backupName:$backupName"                                                                                                                                                                                             8_readValidation.sh                                                                                 0000755 0001750 0001750 00000000725 14306640543 016121  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción:$option , backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave:$clave"                                           9_opciones.sh                                                                                       0000755 0001750 0001750 00000000656 14306662001 015007  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con sin parámetros


echo "Programa Opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opción enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utlizada";;
*) echo "$! no es una opción";;
esac
shift
done                                                                                  gzip.sh                                                                                             0000644 0001750 0001750 00000000604 14306715523 013707  0                                                                                                    ustar   edgarmejiav                     edgarmejiav                                                                                                                                                                                                            # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             