#!/bin/bash
df -h | grep "$1" | tr -s ' ' | cut -d' ' -f5
