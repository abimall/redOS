#!/bin/bash/
su - 
dnf install dhcp-server tftp-server syslinux httpd dnf-plugins-core -y


mkdir /var/lib/tftpboot/pxelinux.cfg && mkdir /var/lib/tftpboot/uefi  && mkdir -p /var/lib/tftpboot/images/REDOS


cp /usr/share/syslinux/{chain.c32,mboot.c32,memdisk,menu.c32,pxelinux.0,ldlinux.c32,libutil.c32} /var/lib/tftpboot/
chmod 777 /var/lib/tftpboot/pxelinux.0

dnf download shim-x64 grub2-efi-x64 --downloaddir=/root/
cd /root/
rpm2cpio shim-x64-*.rpm | cpio -dimv
rpm2cpio grub2-efi-x64-*.rpm | cpio -dimv
cp ./boot/efi/EFI/BOOT/BOOTX64.EFI /var/lib/tftpboot/uefi
cp ./boot/efi/EFI/redos/grubx64.efi /var/lib/tftpboot/uefi

chmod 777 /var/lib/tftpboot/uefi/*.*

# монтирование iso
mount -t iso9660 -o loop /home/dfyz/iso/redos7.3.iso /mnt/
