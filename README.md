**简介** | [中文](https://zuike7.com)

# ZUIKE-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/zuifengguai/ZUIKE-OpenWrt/blob/main/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

## 此编译为86_64位软路由固件，可用于主路由/旁路由/单口等，需要其他功能可自行.config文件里面修改
## 用法

- 单击 [Use this template](https://github.com/zuifengguai/ZUIKE-OpenWrt/generate) 按钮以创建新的存储库.
- 使用 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)代码生成文件。您可以通过工作流文件中的环境变量进行更改.
- 通过修改diypart1.sh文件修改feed source 第三方源配置。默认添加第三方库
- 通过修改diypart2.sh文件可以自定义默认IP，登陆密码等。按我的需要现在的默认IP为192.168.5.1,不需要更改的加#注释就可以。
- 编在 Actions 页面选择ZUIKE OpenWrt，然后点击Run Workflow按钮，即可开始编译。（如果需要 SSH 连接则把SSH connection to Actions的值改为true),值改为true,可自定义编译[一般默认false用.config进行编译]
- 自己需要的服务一般不会随意变化，
## 云上自定义编译
- 先执行cd openwrt  make menuconfig  查看记录保存裁图，退出
- make clean    删除/bin和/build_dir目录中的文件 【清除旧的编译产物】
- make dirclean       更换架构编译前必须执行
- rm -rf tmp     清除临时文件
- rm -rf ./tmp && rm -rf .config  删除配置，从新设置
- 完成后执行make menuconfig  进行自定义编译插件选择【新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.top/827.html)】
- 编译导出     ./scripts/diffconfig.sh > seed.config
- 查看config文件并复制  vim seed.config
- 通过 Ctrl-d 退出SSH
- 复制一下这个seed.config的文本内容到项目根目录的.config文件中,这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
## 推荐编译
- 自定义固件大小[X86推荐]
##### Target System (x86)  --->
##### Subtarget (x86_64)  --->
##### Target Profile (Generic x86/64)  --->

- 自定义固件大小
##### (256) Kernel partition size (in MB) (NEW)
##### (512) Root filesystem partition size (in MB) (NEW)
##### 如果因为勾选基于 EXT4 文件系统编译固件而造成编译报错，建议调高 Root filesystem partition size
##### CONFIG_TARGET_KERNEL_PARTSIZE=256 #内核256MB .config文件里面修改
##### CONFIG_TARGET_ROOTFS_PARTSIZE=512 #根512MB .config文件里面修改
#### 无特殊需求，那么 Target Images 勾选
##### [*] squashfs (NEW)
##### [*] Build GRUB images (Linux x86 or x86_64 host only) (NEW)
##### [*] GZip images (NEW)


- 支持iPv6：
##### Extra packages ---> ipv6helper （选定这个后下面几项自动选择了）
##### Network ---> odhcp6c
##### Network ---> odhcpd-ipv6only
##### LuCI ---> Protocols ---> luci-proto-ipv6
##### LuCI ---> Protocols ---> luci-proto-ppp

- 打开适用于VMware的VM Tools
##### Utilities ---> open-vm-tools

    

## 组件

- 创建文件和构建OpenWrt固件可能需要很长时间。因此，在创建存储库以构建自己的固件之前，您可以通过本地构建满足您需求的固件。.config
将构建的固件的一些元信息（例如固件体系结构和已安装的软件包）添加到存储库简介中，这将节省其他人的时间。


## 资源来源：

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
