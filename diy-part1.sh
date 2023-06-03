#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source 第三方源
##############################################################################################
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
#echo 'src-git smpackage https://github.com/kenzok78/small-package' >>feeds.conf.default
#echo 'src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages' >> feeds.conf.default
##############################################################################################
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small-package' >>feeds.conf.default
##############################################################################################
echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default
##############################################################################################
# Argon 主题
#拉取方法格式 { git clone 地址.git package/插件名} 
#此方法直接拉取地址里面所有文件
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne
####################################
#拉取方法格式 { svn co  第三方源地址/trunk/名称 package/插件名}
#说明--- 此方法是拉取插件包地址里面其中一个文件夹(插件) 
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-argonne-config package/luci-app-argonne-config
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-theme-argon package/luci-theme-argon
##############################################################################################
##############################################################################################

