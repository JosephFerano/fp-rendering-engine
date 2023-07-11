#!/bin/sh

scp 3dfp.zip joe-vps:~
ssh joe-vps 'unzip -o 3dfp.zip -d ~/websites/3d-fp/ && rm 3dfp.zip'
