#!/bin/bash
mkdir -p ~/templates
alltemplates=$(ls -d ~/templates/*/)
templates=""
for i in $alltemplates; do
    dirname=${i:0:-1}
    templates="${templates} ${dirname##*/}"
done
complete -W "${templates}" template
