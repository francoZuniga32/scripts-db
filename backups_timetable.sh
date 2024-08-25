#!/bin/bash

# Configuración
DB_HOST="127.0.0.1"      # Dirección IP del servidor MySQL
DB_PORT="3307"               # Puerto del servidor MySQL
DB_USER="root"               # Nombre de usuario de MySQL
DB_PASS="1234"      # Contraseña de MySQL (puede dejarse en blanco para que se solicite interactivamente)
DB_NAME="timetable"          # Nombre de la base de datos a respaldar

# Generar la marca de tiempo en formato YYYYMMDD_HHMMSS
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Nombre del archivo de salida
OUTPUT_FILE="buckups/${DB_NAME}_backup_${TIMESTAMP}.sql"

# Comando mysqldump con opciones
mysqldump --column-statistics=0 -u ${DB_USER} -p -h ${DB_HOST} -P ${DB_PORT} ${DB_NAME} > ${OUTPUT_FILE}

# Comprobar si el comando mysqldump tuvo éxito
if [ $? -eq 0 ]; then
    echo "Backup de la base de datos '${DB_NAME}' realizado con éxito en el archivo '${OUTPUT_FILE}'."
else
    echo "Error al realizar el backup de la base de datos '${DB_NAME}'."
fi
