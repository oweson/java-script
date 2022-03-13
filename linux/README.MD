## linux直接执行可能没有权限，需要先赋予脚本的执行权限

chmod +x guide-app.sh


#   效果
## 一键启动：    ./guide-app.sh start

# 1 显示应用状态
guide-app.sh status

# 2 前台启动应用
guide-app.sh run

# 3 后台启动应用
guide-app.sh start

# 4 关闭应用
guide-app.sh stop


**2  后台启动应用后，应输入一个回车，回到终端后再退出终端，如果直接退出则应用可能退出后台运行**
  