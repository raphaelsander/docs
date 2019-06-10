# TTL

O TTL é um dentre muitos parâmetros que o NMAP utiliza para efetuar a identificação do sistema operacional.

|OS					                | TCP | UDP |
|-----------------------------------|:---:|:---:|
|AIX					            |60   |30   |
|DEC Patchworks V5			        |30   |30   |
|FreeBSD 2.1				        |64   |64   |
|HP/UX 9.0x				            |30   |30   |
|HP/UX 10.01				        |64   |64   |
|Irix 5.3				            |60   |60   |
|Irix 6.x				            |60   |60   |
|UNIX					            |255  |255  |
|Linux					            |64   |64   |
|MacOS/MacTCP 2.0.x			        |60   |60   |
|OS/2 TCP/IP 3.0				    |64   |64   |
|OSF/1 V3.2A				        |60   |30   |
|Solaris 2.x				        |255  |255  |
|SunOS 4.1.3/4.1.4			        |60   |60   |
|Ultrix V4.1/V4.2A			        |60   |30   |
|VMS/Multinet				        |64   |64   |
|VMS/TCPware				        |60   |64   |
|VMS/Wollongong 1.1.1.1			    |128  |30   |
|VMS/UCX (latest rel.)			    |128  |128  |
|MS Windows 95/98/NT 3.51		    |32   |32   |
|Windows NT 4.0/2000/XP/2003 Server	|128  |128  |

Porém é possível enganar o scanner do NMAP alterando o parâmetro do TTL no sistema operacional.
Editando o arquivo /proc/sys/net/ipv4/ip_default_ttl no Linux para o TTL desejado o scanner ficará incerto.

Lembrando que ao dar um ping em um host o TTL é exibido, porém caso o pacote passe por um nó, será decrementado o número de nós do valor total do TTL.

