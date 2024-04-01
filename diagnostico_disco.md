
# Comandos de Linux para la gestión de sistemas de archivos y dispositivos

## VFS (Sistema de Archivos Virtuales)
El Sistema de Archivos Virtuales (VFS) es una abstracción en el kernel de Linux que permite que múltiples sistemas de archivos coexistan.

### Ejemplos de comandos para VFS:
1. `lsblk`: Lista todos los dispositivos de bloque disponibles en el sistema, lo que puede dar una visión general de la estructura de VFS.
2. `mount`: Muestra todos los sistemas de archivos montados que VFS está manejando actualmente.
3. `df -hT`: Muestra el uso de disco de los sistemas de archivos que VFS está administrando.

## Sistemas de Archivos
Los comandos relacionados con sistemas de archivos te permiten gestionar cómo los datos se almacenan y se recuperan.

### Ejemplos de comandos para sistemas de archivos:
1. `mkfs`: Crea un sistema de archivos en un dispositivo de almacenamiento especificado (por ejemplo, `mkfs.ext4 /dev/sdb1`).
2. `fsck`: Verifica y repara un sistema de archivos (por ejemplo, `fsck /dev/sda1`).
3. `tune2fs`: Ajusta varios parámetros en un sistema de archivos ext2/ext3/ext4 (por ejemplo, `tune2fs -l /dev/sda1`).

## Administrador de Volúmenes
El Administrador de Volúmenes (como LVM) te permite crear y administrar dispositivos de almacenamiento lógicos.

### Ejemplos de comandos para administrador de volúmenes:
1. `lvcreate`: Crea un volumen lógico en un grupo de volumen existente (por ejemplo, `lvcreate -L 10G -n myvolume myvg`).
2. `vgdisplay`: Muestra información detallada sobre los grupos de volúmenes.
3. `lvextend`: Extiende el tamaño de un volumen lógico (por ejemplo, `lvextend -L +5G /dev/myvg/mylv`).

## Dispositivo de Bloques
Los dispositivos de bloques son dispositivos de almacenamiento que Linux utiliza para leer y escribir datos en bloques de información.

### Ejemplos de comandos para dispositivos de bloques:
1. `blkid`: Muestra el UUID y otros atributos de los dispositivos de bloque.
2. `fdisk`: Herramienta para manipular la tabla de particiones de dispositivos de bloque (por ejemplo, `fdisk /dev/sda`).
3. `hdparm`: Muestra o establece parámetros de dispositivos de almacenamiento ATA/SATA (por ejemplo, `hdparm -i /dev/sda`).

---
