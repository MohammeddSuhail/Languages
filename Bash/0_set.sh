1. set -x
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



2.
set -e
# exit the script when there is an error


3.
set -o pipefail
# set -e won't work if they is failure in pipe command , beacue it'll check the authenticity of last command not all cmd in pipe,
# so need to use this command


all 3 in one:
set -exo pipefail
