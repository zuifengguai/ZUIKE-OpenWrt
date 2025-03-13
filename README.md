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
- ================================================================

<summary>🆘 使用命令拉取别人的仓库

比如我要拉取这个仓库：
<br>
```
https://github.com/281677160/openwrt-package
```
这个其实很好理解的 git clone 就是下载，下载东西肯定得有地址啊，https://github.com/281677160/openwrt-package 就是地址，下载了后要存放在什么地方呢？ 源码的package文件夹就是存放地方，就在package后面跟一个文件夹名字，名字你随便改，不过不能跟源码里面的文件夹重名，如果你拉的是单独插件的话，一般来说改成插件名字容易记忆，比如拉取的是ssr plus就是这样写的，package/luci-app-ssr-plus

还有就是拉取别人插件的时候要注意看人家写的内容，有没有需要什么依赖的，需要的话要一起拉取了，要不然拉了也是没用的。

下面就列出一下示例：
```
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
git clone https://github.com/281677160/openwrt-package package/danshui
```
上面那样拉取的是别人主仓库，怎么看是不是主仓库呢？就是用链接打开后直接能见的就是主仓库，还可以有分支的，如果要拉取分支怎么办呢？在链接前面加个分支号就好了
```
git clone -b 19.07 https://github.com/281677160/openwrt-package package/danshui
```
就这样就OK了，加个-b 然后分支名称，那个19.07就是我插件包的另外一个分支，如果你们拉取别人的仓库，要拉取其他分支，就改成他的分支名称就可以了，要注意格式，该有空格的地方要有空格

- ================================================================

<summary>🆘 单独拉取特定的插件

<br>

比如单独拉取我插件包的luci-app-clash

```
svn co https://github.com/281677160/openwrt-package/trunk/luci-app-clash package/luci-app-clash
```
这个关系就跟上面差不多了，也是要地址，路径的，重点要说的是这个链接是有改变的，怎么改变法呢？整个链接真正的链接看下面的，这个原始链接怎么来呢?比如你在别人的仓库看到某个插件，再点开那个插件的文件夹，然后在浏览器复制完整链接就是了。如果有分支的，你想要分支的插件，就先选择了分支再打开插件文件夹然后在复制链接就可以了。
```
https://github.com/281677160/openwrt-package/tree/master/luci-app-clash  
```
<--- 在浏览器上复制出来的真正链接
```
https://github.com/281677160/openwrt-package/trunk/luci-app-clash        
```
<--- 用的时候修改过的链接，认真对比一下就懂了
大家看清楚没有？链接里面是带有分支名称的，还有一个tree，就是这个了 tree/master 把这里替换成 trunk 就可以了，主仓库就这样拉取，如果要拉取分支的呢？也简单的，把tree改成branches就行，比如
```
https://github.com/281677160/openwrt-package/tree/19.07/luci-app-eqos   
```
<--- 在浏览器上复制出来的真正链接
```
https://github.com/281677160/openwrt-package/branches/19.07/luci-app-eqos   
```
<--- 把链接修改好，把tree/19.07改成branches/19.07，然后前面加svn co 后面加路径
```
svn co https://github.com/281677160/openwrt-package/branches/19.07/luci-app-eqos package/luci-app-eqos  
```
<--- 然后就变成这个完整拉取链接


- 编译开始 ctrl+c 
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