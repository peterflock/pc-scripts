#! /bin/bash
tar --listed-incremental=/media/backup/snapshot.file -cJpf /media/backup/the-vault-cryptomator-backup-`date +%Y-%m-%d-%H-%M`.tar.xz /home/user/the-vault-cryptomator-cipher
