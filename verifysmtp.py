#!/usr/bin/python
import socket
import sys

def testipaddress(ipaddress, usernames):
    print("*** Trying " + ipaddress + ' ******************************')

    # Connect
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    connect = s.connect((ipaddress,25))
    banner = s.recv(1024)
    print banner

    for username in usernames:
        # VRFY a user
        s.send('VRFY ' + username + '\r\n')
        result = s.recv(1024)
        print result

    # Close the socket
    s.close()

with open('usernames.txt') as f:
    usernames = f.read().splitlines()

testipaddress('10.11.1.217', usernames)