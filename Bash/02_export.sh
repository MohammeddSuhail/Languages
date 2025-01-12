#!/bin/sh

export lang="set a variable in parent script"
echo $lang

bash -c 'echo acessing in child: $lang'