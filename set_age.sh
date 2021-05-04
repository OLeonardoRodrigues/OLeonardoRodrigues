#!/bin/bash

birthday="1999-12-27"
new_age=$(( ($(date -u +%s) - $(date -u -d $birthday +%s)) / 31579200 ))

sed -i -e "s|<span id='age'>[[:digit:]]\+</span>|<span id='age'>${new_age}</span>|g" README.md