#!/bin/bash
git add .
git commit -am"crontab job backup"
git pull --rebase
git push
