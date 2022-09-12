#!/bin/bash
cd 
cd /home/edgarmejiav/Documentos/docker/mongo/backups
echo    "|---------------------------|"
echo    "|***************************|"
echo    "|*********RESTORE***********|"
echo    "|*****MONGO BACKPUS*********|"
echo    "|***************************|"
echo    "|---------------------------|"


backRestore() {
echo -e "\n"
fils+=()
a=0
for fil in $(ls)
do
   fils+=($fil)
    echo "[$a]:$fil"
    ((a=a+1))
done

read -p "Select the backup to restore: " num
echo ${fils[$num]}
docker  exec -it mongo  mongorestore -u super -p passw0rd --authenticationDatabase admin /backups/${fils[$num]} --gzip --nsInclude=db.* --drop
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."

}

createBackup (){

  docker  exec -it mongo  mongodump --db db --username super --password passw0rd --authenticationDatabase admin --gzip --out  /backups/`date +"%m-%d-%y"`
      read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."


}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "          PGUTIL - utils mongo          "
    echo "_________________________________________"
    echo "                MAIN            "
    echo "_________________________________________"
    echo "1. Restore Backup mongo "
    echo "2. create BACKUP"
    echo "3. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-3]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            backRestore
            sleep 3
            ;;
        2) 
            createBackup
            sleep 3
            ;;
     
        3)  
         echo -e "\n"
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done    