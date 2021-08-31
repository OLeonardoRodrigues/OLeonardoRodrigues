#!/bin/bash

birthday="1999-12-27"
new_age=$(( ($(date -u +%s) - $(date -u -d $birthday +%s)) / 31579200 ))

sed -r -i -e 's|<span id="age">([0-9]{0,})</span>|<span id="age">'"${new_age}"'</span>|g' README.md
