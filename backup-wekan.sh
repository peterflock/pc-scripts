#!/bin/bash

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/snap/wekan/current/lib/x86_64-linux-gnu
PATH="$PATH:/snap/wekan/current/bin"

cd /home/user/.local/share/Cryptomator/mnt/the-vault-cryptomator-cipher/backups_regular/wekan

sudo snap stop wekan.wekan
mongodump --port 27019
sudo snap start wekan.wekan

tar -cJpf /home/user/.local/share/Cryptomator/mnt/the-vault-cryptomator-cipher/backups_regular/wekan/dump-`date +%Y-%m-%d-%H-%M`.tar.xz /home/user/.local/share/Cryptomator/mnt/the-vault-cryptomator-cipher/backups_regular/wekan/dump
