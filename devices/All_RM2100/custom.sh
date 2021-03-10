#!/bin/bash

sed -i 's/${Arch}/${Arch}_softfloat/g' feeds/custom/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
rm -f feeds/custom/luci-theme-edge/htdocs/luci-static/edge/logo.png
rm -f feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
cp package/logos/milogo.png feeds/custom/luci-theme-edge/htdocs/luci-static/edge/logo.png
cp package/logos/opunblockmusic.po feeds/custom/luci-app-unblockmusic/po/zh_Hans/unblockmusic.po
rm -Rf package/logos
