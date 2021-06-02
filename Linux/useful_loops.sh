#!/bin/bash

#paths list of etc directories
paths=('/etc/shadow' '/etc/passwd')


# command set up for displaying file permission
for path in ${paths[@]}

do

    ls -lah $path
done
