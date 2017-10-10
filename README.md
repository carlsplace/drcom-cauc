# 好消息奔走相告啊，校园网终于可以像CMCC一样网页登录了。本项目的历史使命完成啦！

# drcom for cauc

fork自[drcom-generic](https://github.com/carlsplace/drcom-cauc)项目
尝试打包发布到AUR

# 简单使用指南

安装```make install```即可

## 账号密码

修改`/etc/drcom.conf`中对应的变量：
```
username = '用户名'
password = '密码'
```
或者在```make install```之前修改drcom.conf文件

## 相关命令

写了systemd服务脚步，可通过systemd来管理程序启动。

开机自启：`sudo systemctl enable drcom`

取消开机自启：`sudo systemctl disable drcom`

简化了一些systemd服务命令

`drcom -1`: 拨号

`drcom -0`: 断开

`drcom -s`: 查看当前systemd服务状态

`drcom -r`: 重启服务
