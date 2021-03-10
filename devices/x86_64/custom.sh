#!/bin/bash
rm -f feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
cp package/logos/opunblockmusic.po feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
sed -i "s/PassWall+/Hello World+/g" feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
rm -Rf package/logos
