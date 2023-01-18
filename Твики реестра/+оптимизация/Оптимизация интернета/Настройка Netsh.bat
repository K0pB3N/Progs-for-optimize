@Echo Off
title Configuring Netsh by BOON
color C
netsh winsock reset catalog 
netsh int ip reset c:resetlog.txt 
netsh int ip reset C:\tcplog.txt
netsh int tcp set heuristics disabled
netsh int tcp set supplemental Internet congestionprovider=ctcp
netsh int tcp set global rsc=disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global initialRto=2100
exit