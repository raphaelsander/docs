#!/usr/bin/python

import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.1.100", 21))
resposta = s.recv(1024)
print resposta

s.send("USER ftp\r\n") //O '\r\n' simula o envio da tecla ENTER
//s.send("USER anonymous\r\n")

r = s.recv(1024)
print r

s.send("PASS ftp\r\n")
//s.send("PASS anonymous\r\n")

r = s.recv(1024)
print r

s.send("PWD \r\n")
s.send("QUIT \r\n")
r = s.recv(2048)
print r
