#!/bin/bash

echo "Actualizando variables de entornos"
python /opt/config/parse_front_variables.py
echo "Iniciando angular"
npm install
npm start

#while true
#do
#  sleep 20
#done