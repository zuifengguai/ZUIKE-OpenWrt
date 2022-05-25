**English** | [中文](https://zuike7.com)

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)


## 用法

- 单击 [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) 按钮以创建新的存储库.
- 使用 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)代码生成文件。（ 您可以通过工作流文件中的环境变量进行更改.
- 将文件推送到 GitHub 存储库。.config
     亦可自行上传.config文件进行修改

    CONFIG_TARGET_KERNEL_PARTSIZE=256 #内核256MB .config文件里面修改

    CONFIG_TARGET_ROOTFS_PARTSIZE=512 #根512MB .config文件里面修改
- 在“操作”页上选择。Build OpenWrt.
- 单击该按钮。Run workflow.
- 生成完成后，单击“操作”页面右上角的按钮以下载二进制文件。Artifacts.

## 组件

- 创建文件和构建OpenWrt固件可能需要很长时间。因此，在创建存储库以构建自己的固件之前，您可以通过本地构建满足您需求的固件。.config
将构建的固件的一些元信息（例如固件体系结构和已安装的软件包）添加到存储库简介中，这将节省其他人的时间。


## 资源来源：

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
