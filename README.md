## `【ZUIKE-OpenWrt-2025】（IPV6【带DOCKER】云编译`
#### 🚩 ZUIKE-OpenWrt| [醉客网](https://zuike7.com)
- 编译库`X86系列适配OTA自动升级
- 默认IP地址：`192.168.5.1`
- 账户：`root`   密码：`空`

### 2025年更新OpenWrt_x86_64固件
<br>
<summary>🆘 2025全新插件库更新  【重要提示】
<br />
<br>

1.因精力有限，不提供任何技术支持、使用教程;

2.仅限完全行为能力人使用本固件，使用本固件即视为使用者的自愿行为;

3.本人不保证固件的普适性，不保证无bug，不保证绝对的安全稳定;

4.本人不对任何人因使用本固件所遭受的任何理论或实际的损失承担责任。

---

<br>
<summary>✴️加入固件更新/反馈通知频道</summary>
<br>
加入固件反馈频道(https://t.me/+nY18Q9dltBhmNTQ1)  🏠Telegram群
<br />
  我会定时对收集的信息+内核版本及固件版本进行一次更新,并对需要更新的功能一次大升级

<br>
  固件使用问题第一时间留言!稳定更新[达到每个版本都可养老]
<br />

 

- ================================================================
- 首先需要打开 Openwrt 主页,点击系统-TTYD 命令窗,或者使用```putty```或者```openwrt```后台luci插件在线更新 
- 输入`openwrt`即可进入固件升级菜单                            
- ================================================================

- 自行云编译固件姿势
- ssh-actions改为ssh就可以启动插件选择
- 看到ssh链接会有一个web的链接，打开就是命令行，根据下面命令进入
- 开始 ctrl+c 
- 进ssh选择插件 
``` bash
cd openwrt && make menuconfig
```
- 结束ctrl+d
- REPO_TOKEN密匙制作教程：https://git.io/jm.md
- 云编译需要 [在此](https://github.com/settings/tokens) 创建个```token```,勾选：```repo```, ```workflow```，保存所得的key
- 然后在此仓库```Settings```->```Secrets```中添加个名字为```REPO_TOKEN```的Secret,填入token获得的key

- TG通知```Settings```->```Secrets```中添加个名字为```TELEGRAM_BOT_TOKEN```和```TELEGRAM_CHAT_ID```


[![Stargazers over time](https://starchart.cc/shidahuilang/openwrt.svg)](https://starchart.cc/shidahuilang/openwrt)
 ### 鸣谢！
 感谢以下各位大佬（排名无分先后）<br />
[`coolsnowwolf`]
[`danshui`]
[`Lienol`]
[`immortalwrt`]
[`P3TERX`]
[`Hyy2001X`]
[`coolsnowwolf`]
[`Lienol`]
[`immortalwrt`]
[`openwrt`]
[`x-wrt`]
[`P3TERX`]
[`Hyy2001X`]
[`dhxh`]
[`ophub`]
[`nicholas-opensource`]
[`hx210`]
[`hyird`]
[`World Peace`]
[`klever1988`]
[`actions`]
[`svenstaro`]
[`jerrykuku`]