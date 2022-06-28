#!/bin/bash

echo "Iオプション有り"
touch {1..100}.txt
time find ./ -type f | xargs -I{}  rm -f {}

echo "Iオプション無し"
touch {1..100}.txt
time find ./ -type f | xargs rm -f

