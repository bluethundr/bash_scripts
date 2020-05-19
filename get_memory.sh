#!/bin/bash

for h in $(awk '{print $1}' hosts); do printf "%-24s %s %s %s\n" "$h" $(timeout 4 ssh -q $h grep MemTotal /proc/meminfo); done
