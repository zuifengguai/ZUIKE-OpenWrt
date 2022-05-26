**English** | [中文](https://zuike7.com)

# ZUIKE-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

## 此固件为86_64位软路由/旁路由/单口等，需要主路由功能.亦可自行.config文件里面修改
## 用法

- 单击 [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) 按钮以创建新的存储库.
- 使用 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)代码生成文件。（ 您可以通过工作流文件中的环境变量进行更改.
- 通过修改diypart1.sh文件修改feeds.conf.default配置。默认添加第三方库
- 通过修改diypart2.sh文件可以自定义默认IP，登陆密码等。按我的需要现在的默认IP为192.168.1.11,不需要更改的加#注释就可以。
- 编在 Actions 页面选择Build OpenWrt，然后点击Run Workflow按钮，即可开始编译。（如果需要 SSH 连接则把SSH connection to Actions的值改为true),值改为true,可自定义编译,自己需要的服务一般不会随意变化，就可以在 make menuconfig 选好后执行 ./scripts/diffconfig.sh > seed.config 复制一下这个seed.config的文本内容到项目根目录的.config文件中（建议自命名），这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
- 自定义固件大小[X86推荐]

    CONFIG_TARGET_KERNEL_PARTSIZE=256 #内核256MB .config文件里面修改

    CONFIG_TARGET_ROOTFS_PARTSIZE=512 #根512MB .config文件里面修改
- 在“操作”页上选择。Build OpenWrt.
- 单击该按钮。Run workflow.
- 生成完成后，单击“操作”页面右上角的按钮以下载二进制文件。Artifacts.
- 通过 Ctrl-d 退出SSH

## 组件

- 创建文件和构建OpenWrt固件可能需要很长时间。因此，在创建存储库以构建自己的固件之前，您可以通过本地构建满足您需求的固件。.config
将构建的固件的一些元信息（例如固件体系结构和已安装的软件包）添加到存储库简介中，这将节省其他人的时间。


## 资源来源：

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
