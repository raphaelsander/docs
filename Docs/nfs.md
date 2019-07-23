# NFS

Testando um compartilhamento NFS.

mkdir /mnt/nfs
showmount -e 192.168.0.100
mount -t nfs 192.168.0.100:/ /mnt/nfs -o nolock
cd /mnt/nfs/
ls
