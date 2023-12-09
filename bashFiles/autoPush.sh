#!/bin/bash
#
cd "/e/Projects/Bash/main/"

git add .

git commit -m "Commit at %(date + '%Y-%m-%d %H:%M:%S')"

git push -u origin main

