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
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
#echo 'src-git smpackage https://github.com/kenzok78/small-package' >>feeds.conf.default
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
##############################################################################################

# 主题
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne

##############################################################################################
##############################################################################################
# 第六版本功能
# open-vm-tools   #支持虚拟化
#####################
# 状态
# luci-app-firewall   #添加防火墙
# luci-app-ramfree  #释放内存
#####################
#  系统
# luci-app-diskman  #DiskMan 磁盘管理
# luci-app-ttyd     #ttyd
# luci-app-netdata   #Netdata实时监控
# advanced-reboot  #重启
# luci-app-autoreboot  #定时重启  
# luci-app-poweroff    #关机
#####################
#istore
# luci-app-store   #应用商店
#####################
#docker
# luci-app-dockerman  #docker
#####################
# 服务
# luci-app-adguardhome   #adguardhome广告过滤
# luci-app-openclash	#OpenClash 
# luci-app-passwall   #passwall
# luci-app-smartdns  #SmartDNS 服务器
# luci-app-fileassistant  # web文件助手 
# luci-app-ssr-plus  #ShadowSocksR Plus+  
#####################
# 网络
# luci-app-usb-printer  #USB 打印服务器
# luci-app-sfe   #Turbo ACC网络加速
# luci-app-samba  #网络共享（Samba）
##############################################################################################
##############################################################################################

#以下为原来版本更新内容
##############################################################################################
##############################################################################################
#########第四版本升级项目[已编译]
#删     定时重启、定时关机、定时重启网络.   luci-app-autotimeset  
#加     文件助手   luci-app-fileassistant  
#删     KMS 服务器    luci-app-vlmcsd
#删     IPSec VPN 服务器   luci-app-ipsec-vpnd  
#删     网络唤醒    luci-app-wol
#删     ZeroTier     luci-app-zerotier
#########第五版即将更新[已编译]
#删     测试速度-内外网络速度测试   luci-app-netspeedtest  
#加     docker
#删     MWAN3 分流助手  mwan3
#删     广告屏蔽大师Plus luci-app-adbyby-plus
#删     阿里云盘 FUSE
#删     阿里云盘 WebDAV
#删     应用过滤    luci-app-oaf
#删     网址过滤  luci-app-control-weburl
#删     京东签到  luci-app-jd-dailybonus
#加     支持IPv6
#########第5.1版即将更新[已编译]
#删     cups打印机   cups
#删     Docker CE
#删     FTP 服务器  luci-app-vsftpd
#删     实时流量监测  luci-app-nlbwmon
##############################################################################################
#########第6版即将更新[已编译]
#加     磁盘管理插件：luci-app-diskman
#加     passwall       luci-app-passwall   
#删     HelloWorld  luci-app-vssr/
#删     支持IPv6
