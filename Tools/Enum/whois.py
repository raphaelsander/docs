#!/usr/share/python

import socket, sys

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("200.160.2.3", 43)) # IP do registro.br
s.send(sys.argv[1]+'\r\n') # Site de destino
resp = s.recv(1024)
print resp
