#!/bin/bash

set -x #debug mode

df -h

free -h

nproc




# output:
# + df -h
# Filesystem            Size  Used Avail Use% Mounted on
# C:/Program Files/Git  477G  358G  119G  76% /
# + free -h
# 0_debug_mode_set-x.sh: line 7: free: command not found
# + nproc
# 12
