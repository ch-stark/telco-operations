#!/bin/bash

#### This script has to poweroff the server and return 0 if operation succeeded, 1 otherwise

/opt/dell/srvadmin/bin/idracadm7 -r 192.168.1.10 -u root -p calvin serveraction powerdown
if [ $? -eq 0 ]; then
  exit 0
else
  exit 1
fi


