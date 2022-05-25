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

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add a feed source 第三方源
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
echo 'src-git smpackage https://github.com/kenzok78/small-package' >>feeds.conf.default
##############################################################################################

# 主题
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne

##############################################################################################

# 状态

# 实时监控 lede包已有

#释放内存 lede包已有

##############################################################################################

#  系统

#定时重启
#luci-app-autoreboot

#ttyd lede包已有

#磁盘管理
#luci-app-dockerman

#文件传输 lede包已有

#  关机
#luci-app-poweroff

#广告屏蔽大师Plus luci-app-adbyby-plus

#添加防火墙luci-app-firewall 

#网络带宽监视器luci-app-nlbwmon

#释放内存luci-app-ramfree

#网络共享（Samba）luci-app-samba

#AdGuard home广告过滤（Le库以外的插件）luci-app-adguardhome 

#Turbo ACC 网络加速(支持 Fast Path 或者 硬件 NAT)

#USB 打印服务器luci-app-usb-printer

#ttyd

#阿里云盘 FUSE

#阿里云盘 WebDAV

#重启advanced-reboot

#实时监控 luci-app-netdata    

#网络访问控制luci-app-control-weburl

#Argon 主题设置 argonne主题设置    luci-app-argonne-config

#定时重启、定时关机、定时重启网络   luci-app-autotimeset




##############################################################################################

# 服务

#ShadowSocksR Plus+

#helloword

#openclash   OpenClash

#adguardhome  luci-app-adguardhome

#京东签到  luci-app-jd-dailybonus

#MWAN3 分流助手  mwan3

#SmartDNS    luci-app-smartdns

#应用商店   luci-app-store

#测试速度-内外网络速度测试   luci-app-netspeedtest

#应用过滤    luci-app-oaf

#cups打印机   cups
##############################################################################################

# NAS

#文件助手
#luci-app-fileassistant

##############################################################################################

# 网络

#Turbo ACC 加速 lede包已有
#ZeroTier内网穿透luci-app-zerotier 
##############################################################################################
