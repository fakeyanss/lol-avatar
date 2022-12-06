#!/usr/bin/env bash

for i in {0..6000}; do 
    url="https://game.gtimg.cn/images/lol/act/img/profileicon/$i.png"
    wget "$url" -O "avatar/$i.png" >/dev/null 2>&1
    if [[ $? == 0 ]]; then
        echo "Downloaded $i.png"
    else
        echo "Failed to download avatar=$i, url=$url"
    fi
done
