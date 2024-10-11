#!/bin/bash

# Definir el disco
DISCO="/dev/sdc"


(
echo o      
echo n      
echo p      
echo 1      
echo       
echo +2.5G  

echo n      
echo p      
echo 2      
echo        
echo +2.5G  

echo n      
echo p      
echo 3      
echo        
echo +2.5G  

echo n      
echo e      
echo 4      
echo       
echo        


echo n      
echo l      
echo        
echo        
echo +2.5G  

echo w      
) | fdisk $DISCO


sudo mkfs.ext4 "${DISCO}1"
sudo mkfs.ext4 "${DISCO}2"
sudo mkfs.ext4 "${DISCO}3"
sudo mkfs.ext4 "${DISCO}5"  


sudo mkdir -p /mnt/sdc1
sudo mkdir -p /mnt/sdc2
sudo mkdir -p /mnt/sdc3
sudo mkdir -p /mnt/sdc5  


sudo mount "${DISCO}1" /mnt/sdc1
sudo mount "${DISCO}2" /mnt/sdc2
sudo mount "${DISCO}3" /mnt/sdc3
sudo mount "${DISCO}5" /mnt/sdc5

echo "Particiones creadas y montadas en /mnt/sdc1, /mnt/sdc2, /mnt/sdc3 y /mnt/sdc5."
lsblk
