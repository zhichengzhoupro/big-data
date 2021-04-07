# Linux
## 重要命令
````shell
cd ->  cd
dir -> ls
/? -> --help , -h , --help | more， man 
````
.开头的文件就是隐藏文件
`````
whoami 查看当前用户
which 查看命令位置
echo 回声命令 输出字符 区分大小写 echo $path 
`````

## 文件结构
`````
/bin 二进制文件目录 执行的命令
/sbin 二进制文件目录
/dev  设备目录
/etc  配置文件目录 全局的配置文件存放目录
/lib  库文件目录 里面的文件等价于windows下面的dll文件 此目录下包含系统引导和在根用户执行命令时候所必需用到的共享库
/home 主目录
/usr 系统资源目录 Unix Software Resource的缩写 默认的软件安装目录，其地位类似Windows上面的”Program Files”目录
/usr/bin 绝大部分的用户可使用指令都放在这里。请注意到他与/bin的不同之处。(是否与开机过程有关)， 一般使用者使用并且不是系统自检等所必需可执行文件的目录
/usr/lib32 lib64 lib 软件需要使用的库文件
`````