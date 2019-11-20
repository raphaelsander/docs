# NFS

**NFS** (Network File System) é um protocolo (serviço de rede) que permite acesso remoto a um sistema de arquivos através da rede. Todos os sistemas Unix podem trabalhar com esse protocolo, mas quando os sistemas Windows estão envolvidos, o protocolo SMB (Samba, também conhecido como “CIFS”) tem que ser usado. O cliente NFS tem por finalidade tornar o acesso remoto transparente para o usuário do computador. Assim, esta interface cliente e servidor, executada pelo NFS através dos protocolos Cliente-Servidor, fica bem definida quando o usuário, ao chamar um arquivo/diretório no servidor, lhe parece estar acessando localmente, sendo que está trabalhando com arquivos remotamente.

---

Testando um compartilhamento NFS.

```bash
mkdir /mnt/nfs
```

```bash
showmount -e 192.168.0.100
```

```bash
mount -t nfs 192.168.0.100:/ /mnt/nfs -o nolock
```

```bash
cd /mnt/nfs/
```

```bash
ls
```
