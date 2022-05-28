#!/bin/bash
# npm install
VERSION_NUMBER="v$(grep -oP '"version": "\K[^"]+' package.json | head -n1)" # 确定版本号
REACT_APP_BUILD_INFO=$VERSION_NUMBER npm run build
rm -r ../nginx-zhole/build
cp -r build ../nginx-zhole/
rm -r ~/test/build
cp -r build ~/test/