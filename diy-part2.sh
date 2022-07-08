#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 更改默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/' feeds/luci/collections/luci/Makefile

#添加编译作者
sed -i '/<tr><td width="33%"><%:CPU usage/a <tr><td width="33%"><%:Compiler author%></td><td>zuifengguai</td></tr>' package/lean/autocore/files/x86/index.htm
#修改主机名
sed -i 's/OpenWrt/ZUIKE/g' package/base-files/files/bin/config_generate
#添加汉化
sed -i '5a\msgid "Compiler author"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '6a\msgstr "编译作者"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '7a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po
#添加汉化

#添加固件更新地址
sed -i '/<tr><td width="33%"><%:Compiler author/a <tr><td width="33%"><%:Firmware Update%></td><td><a target="_blank" href="https://zuike7.com">稳定版点这里</a></td></tr>' package/lean/autocore/files/x86/index.htm
#添加汉化
sed -i '8a\msgid "Firmware Update"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '9a\msgstr "固件更新"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '10a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po
#添加汉化

#修复依赖
sed -i 's/PKG_HASH.*/PKG_HASH:=skip/' feeds/packages/utils/containerd/Makefile
