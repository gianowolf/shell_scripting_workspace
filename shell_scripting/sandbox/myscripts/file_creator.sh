#!/bin/bash

#
# < Espera una extension y una lista de nombres para archivos y los numera >
#
# Ejemplo de uso: 
#   $ ./file_creator.sh .md indice introduccion cuerpo bibliografia 
#   >> Files created succesfully
#   $ ls
#   >> 01_indice.md 02_introduccion.md 03_cuerpo.md 04_bibliografia.md
#

EXTENSION=$1
shift
FILENAMES=$@

