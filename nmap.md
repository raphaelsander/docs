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

Nível de agressividade:
-T0 = usado para previnir IDS
-T1 = espera cerca de 15s durante o scan
-T2 = espera cerca de 4s durante o scan
-T3 = normal (padrão)
-T4 = scan rápido
-T5 = scan muito rápido e barulhento

Exemplos:
nmap -v -A 192.168.0.0/24 => Faz o escanemento em modo verbose trazendo informações de serviços e SO.
nmap -sS -Pn 192.168.0.0/24 => Faz um SYS Scan ignorando a detecção de hosts ativos.
