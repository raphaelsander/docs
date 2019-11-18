#!/usr/bin/python

#A python program to illustrate Caesar Cipher Technique 
def encrypt(text,s):
    result = ""
    # traverse text 
    for i in range(len(text)):
        char = text[i]
        # Encrypt uppercase characters 
        if (char.isupper()):
            result += chr((ord(char) + s-65) % 26 + 65)
        # Encrypt lowercase characters
        else:
            result += chr((ord(char) + s - 97) % 26 + 97)
    return result
#check the above function
for x in range(0, 21):
    text = "MVQSAMRQEBSTSIBSGAQDMOBA"
    s = x
    #print "Text  : " + text
    print "Shift : " + str(s)
    print "Cipher: " + encrypt(text,s)
