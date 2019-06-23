#!/usr/bin/python

# Software by Raphael Sander

import socket
import sys
import re

file = open(sys.argv[2])

for line in file.readlines():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((sys.argv[1], 25))
    response = s.recv(1024)
    s.send("VRFY "+line)
    response = s.recv(1024)
    if re.search('252', resp):
        print "User found: "+response.strip('252 2.0.0')
