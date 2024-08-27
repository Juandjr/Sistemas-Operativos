#!/bin/bash

# Directorio de limpieza
CLEANUP_DIR="/tmp/cleanup"

# Función para mostrar el uso del disco
show_disk_usage() {
    echo "Uso del disco:"
    df -h
    echo
    echo "Mostrando con el tipo de archivo:"
    df -T
    echo
    echo "Lista de dispositivos de bloques:"
    lsblk
    echo
}

# Función para limpiar archivos temporales
cleanup_temp_files() {

    echo "Mostrando en pantalla el contenido de las carpetas Temporales"
    ls /tmp/*
    echo   
    echo "Limpiando archivos temporales..."

    # Limpiar /tmp
    sudo rm -rf /tmp/*
    echo "/tmp limpiado."

    # Limpiar /var/tmp
    sudo rm -rf /var/tmp/*
    echo "/var/tmp limpiado."

    # Muestra un mensaje de que se termino de limpiar
    echo "Limpieza completada."
    echo
}


# Función Main
main() {
    #llamada a las funciones
    show_disk_usage
    cleanup_temp_files
}

# Ejecutar la función principal
main
