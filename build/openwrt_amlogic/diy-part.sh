#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# DIY扩展二合一了，在此处可以增加插件


cat >$NETIP <<-EOF
uci set network.lan.ipaddr='192.168.2.1'                                    # IPv4 地址(openwrt后台地址)
uci set network.lan.netmask='255.255.255.0'                                 # IPv4 子网掩码
uci set network.lan.gateway='192.168.2.1'                                   # IPv4 网关
uci set network.lan.broadcast='192.168.2.255'                               # IPv4 广播
uci set network.lan.dns='114.114.114.114 223.5.5.5'                         # DNS(多个DNS要用空格分开)
uci set network.lan.delegate='0'                                            # 去掉LAN口使用内置的 IPv6 管理
uci commit network                                                          # 不要删除跟注释,除非上面全部删除或注释掉了
uci set dhcp.lan.ignore='1'                                                 # 关闭DHCP功能
uci commit dhcp                                                             # 跟‘关闭DHCP功能’联动,同时启用或者删除跟注释
uci set system.@system[0].hostname='Phicomm-N1'                             # 修改主机名称为Phicomm-N1
EOF

sed -i 's/luci-theme-bootstrap/luci-theme-opentomcat/g' feeds/luci/collections/luci/Makefile           # 选择argon为默认主题

sed -i "s/OpenWrt /大灰狼 Compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ          # 增加个性名字${Author}默认为你的github账号

sed -i "/uci commit system/i\uci set system.@system[0].hostname='DHL-N1'" $ZZZ                # 修改主机名称为Phicomm-N1

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ                                                            # 设置密码为空

#sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/armvirt/Makefile                          # 默认内核5.4，修改内核为5.10




# 设置打包固件的机型，内核组合（可用内核是时时变化的,过老的内核就删除的，所以要选择什么内核请看说明）
#cat >$GITHUB_WORKSPACE/amlogic_openwrt <<-EOF
#amlogic_model=s905x3_s905x2_s905x_s905d_s922x_s912
#amlogic_kernel=5.10.70_5.4.150
#rootfs_size=960
#EOF


# 修改插件名字
sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
sed -i 's/"网络存储"/"NAS"/g' `grep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`


# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间
cat >${GITHUB_WORKSPACE}/Clear <<-EOF
rm -rf config.buildinfo
rm -rf feeds.buildinfo
rm -rf sha256sums
rm -rf version.buildinfo
EOF
