#!/bin/bash

cat /proc/loadavg | cut -d' ' -f1-3
