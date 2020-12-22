#!/usr/bin/env python3

import dns
import dns.resolver
import os

domain = 'megacorpone.com'
nameservers = dns.resolver.resolve(domain,'NS')

for nameserver in nameservers:
    print("Trying", nameserver)
    cmdstring = "host -l " + domain + " " + str(nameserver)
    os.system(cmdstring)