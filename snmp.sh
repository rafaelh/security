echo Enumerate MIB tree
snmpwalk -c public -v1 -t 10 10.11.1.115
snmpwalk -c public -v1 -t 10 10.11.1.227

echo Enumerate Windows Users
snmpwalk -c public -v1 10.11.1.115 1.3.6.1.4.1.77.1.2.25
snmpwalk -c public -v1 10.11.1.227 1.3.6.1.4.1.77.1.2.25

echo Enumerate Running Windows Processes
snmpwalk -c public -v1 10.11.1.115 1.3.6.1.2.1.25.4.2.1.2
snmpwalk -c public -v1 10.11.1.227 1.3.6.1.2.1.25.4.2.1.2

echo Enumerate Open TCP Ports
snmpwalk -c public -v1 10.11.1.115 1.3.6.1.2.1.6.13.1.3
snmpwalk -c public -v1 10.11.1.227 1.3.6.1.2.1.6.13.1.3

echo Enumerating Installed Software
snmpwalk -c public -v1 10.11.1.115 1.3.6.1.2.1.25.6.3.1.2
snmpwalk -c public -v1 10.11.1.227 1.3.6.1.2.1.25.6.3.1.2