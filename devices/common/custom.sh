sed -i "/mediaurlbase/d" package/*/*/luci-theme*/root/etc/uci-defaults/*

sed -i '/docker/d' package/feeds/custom/luci-app-dockerman/Makefile

mv -f feeds/packages/net/nlbwmon package/feeds/custom/nlbwmon