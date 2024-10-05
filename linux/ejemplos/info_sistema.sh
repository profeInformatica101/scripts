#!/bin/bash

# Script para extraer información detallada del hardware en Linux

echo "Información de la Placa Base:"
echo "============================="
# Extraer información de la placa base
sudo dmidecode -t baseboard

echo ""
echo "Información de los Sockets de la CPU:"
echo "===================================="
# Extraer información de los sockets de la CPU
sudo dmidecode -t processor | grep 'Socket Designation'

echo ""
echo "Información de la Memoria:"
echo "=========================="
# Extraer información detallada de cada módulo de memoria
sudo dmidecode -t memory | grep -E 'Size:|Speed:|Voltage:|Form Factor:|Part Number:|Configured Clock Speed:|Manufacturer:|Serial Number:|Asset Tag:'

echo ""
echo "Información de la Fuente de Alimentación:"
echo "========================================"
# Extraer información de la fuente de alimentación
sudo dmidecode -t chassis

echo ""
echo "Información del Disco Duro:"
echo "==========================="
# Usando lsblk para listar información del disco
sudo lsblk -o NAME,SIZE,MODEL,SERIAL

echo ""
echo "Información Adicional del Sistema (Micro ATX, Conectores):"
echo "========================================================="
# Extraer información del chasis y otros detalles físicos
sudo dmidecode -t chassis
