#! /bin/bash

ls /media/backup | grep tar.xz | sort | xargs -I'{}' tar --extract --verbose --verbose --listed-incremental=/dev/null --file=/media/backup/{}
