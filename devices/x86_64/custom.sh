#!/bin/bash
sed -i "s/OpenWrt/MyRouter/g" package/base-files/files/bin/config_generate
rm -f feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
cp package/logos/opunblockmusic.po feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
sed -i "s/PassWall+/Hello World+/g" feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
rm -Rf package/logos
