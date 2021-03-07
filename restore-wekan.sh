#!/bin/bash

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/snap/wekan/current/lib/x86_64-linux-gnu
PATH="$PATH:/snap/wekan/current/bin"

cd /home/user/.local/share/Cryptomator/mnt/the-vault-cryptomator-cipher/backups_regular/wekan

sudo snap stop wekan.wekan

## Only if you get errors about existing indexes, use this instead:
## mongorestore -d wekan --drop --noIndexRestore --port 27019 --dir dump/wekan
mongorestore -d wekan --drop --port 27019 --dir dump/wekan

sudo snap start wekan.wekan
