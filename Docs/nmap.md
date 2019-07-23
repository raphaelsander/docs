# NMAP

-sn = detecção de hosts vivos  
-sT = TCP Connect  
-sS = SYS scan / Half Open  
-sV = Descobrir versões de serviços  
-sU = UDP Scan  
-Pn = Ignora a descoberta de host vivo  
-O = Faz detecção de sistema operacional  
-A = Descobre detalhes sobre SO e serviços  
-p- = varre todas as portas (65535)  
-sF = FIN scan (Envia flag FIN)  
-sN = NULL scan (Não envia nenhuma flag)  
-sX = XMAS scan (Envia FIN+PSH+URG)  
-f = fragmenta os pacotes  
-p = Define a porta  
--open = Só mostra as portas abertas  
-oN = salva em arquivo no formato normal  
-oX = salva em arquivo no formato XML  
-oG = salva em arquivo no formato para grap  

### Nível de agressividade:
-T0 = usado para previnir IDS  
-T1 = espera cerca de 15s durante o scan  
-T2 = espera cerca de 4s durante o scan  
-T3 = normal (padrão)  
-T4 = scan rápido  
-T5 = scan muito rápido e barulhento  

#### Exemplos:
```nmap -v -A 192.168.0.0/24``` => Faz o escanemento em modo verbose trazendo informações de serviços e SO.  

```nmap -sS -Pn 192.168.0.0/24``` => Faz um SYS Scan ignorando a detecção de hosts ativos.  

Em casos que o firewall opera efetuando o DROP podemos realizar um escaneamento com uma porta de saída diferente:  
```nmap -v -sS --source-port 53 192.168.1.100```  

Porém para explorar essa porta teremos que utilizar uma porta de saída permitida pelo firewall:  
```nc -p53 -vn 192.168.1.100 8081```  
*Nesse caso estaremos utilizando a porta 53 como saída para conectar na porta 8081.*  

Nesse tipo de bypass no firewall, podemos utilizar as portas **53**, **443** e **80** que são portas normalmente liberadas pelo firewall.

## Enumeração de SMB
O nmap possui scripts para enumeração de SMB que normalmente se encontram no diretório **/usr/share/nmap/scripts**.

Descobrimento de OS através do SMB:  
```bash
nmap -v --script=smb-os-discovery 192.168.0.114
```

Enumeração de compartilhamento SMB:  
```bash
nmap -v --script=smb-enum-shares 192.168.0.114
```

Podemos também executar todos os scripts possíveis do SMB:  
```bash
nmap -v --script=smb* 192.168.0.114
```