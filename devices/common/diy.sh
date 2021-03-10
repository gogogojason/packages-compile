#!/bin/bash

# ===============================================================================================================
date1=`date +%Y.%m.%d`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='hfy166 Ver.D$date1'/g" package/base-files/files/etc/openwrt_release
sed -i "s/192.168.1.1/192.168.2.1/g" package/base-files/files/bin/config_generate
sed -i 's/https:\/\/op.supes.top/http:\/\/openwrt.ink:8666/g' feeds/custom/luci-app-gpsysupgrade/root/usr/bin/upgrade.lua
sed -i 's/https:\/\/op.supes.top/http:\/\/openwrt.ink:8666/g' feeds/custom/luci-app-gpsysupgrade/luasrc/model/cbi/gpsysupgrade/sysupgrade.lua
rm -f feeds/custom/luci-app-gpsysupgrade/luasrc/view/admin_status/index/links.htm
git clone https://github.com/gogogojason/logos.git package/logos
cp package/logos/oplinks.htm feeds/custom/luci-app-gpsysupgrade/luasrc/view/admin_status/index/links.htm
sed -i 's/系统在线更新/系统升级/g' feeds/custom/luci-app-gpsysupgrade/po/zh_Hans/gpsysupgrade.po
sed -i "1i\msgstr \"PassWall+\"" feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
sed -i "1i\msgid \"Bypass\"" feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
sed -i "2a\lovertg520" feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
sed -i 's/lovertg520//g' feeds/custom/luci-app-bypass/po/zh_Hans/bypass.zh-cn.po
sed -i 's/"IP限速"/"网速控制"/g' feeds/custom/luci-app-eqos/po/zh_Hans/eqos.po
sed -i 's/+luci-theme-bootstrap/+luci-theme-edge/g' feeds/luci/collections/luci/Makefile
sed -i "s/bootstrap/argon/g" feeds/luci/modules/luci-base/root/etc/config/luci
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
