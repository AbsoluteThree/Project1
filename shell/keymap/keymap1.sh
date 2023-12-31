#!/bin/bash

sudo /usr/local/bin/logkeys -s -m /usr/share/keymaps/en_US_ubuntu_1204.map  -o /var/log/logkeys.log 

sudo /usr/local/bin/logkeys logkeys --start --output  /var/log/logkeys.log

