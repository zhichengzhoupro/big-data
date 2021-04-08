# Linux
## 重要命令
````shell
cd ->  cd
dir -> ls
/? -> --help , -h , --help | more， man 
man  查看命令帮助
grep 查找文件里符合条件的字符串 
````
.开头的文件就是隐藏文件
`````
whoami   查看当前用户
which    查看命令位置
echo     回声命令 输出字符 区分大小写 echo $path 
sudo     允许一般用户使用超级用户权限
su , su - 切换到root用户
ifconfig 查看IP地址
mkdir   创建文件夹
rm      删除目录和文件 -f 强制删除 -R 递归删除里面全部内容
touch   创建文件

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
/usr/bin 绝大部分的用户可使用指令都放在这里。请注意到他与/bin的不同之处。(是否与开机过程有关)，
        一般使用者使用并且不是系统自检等所必需可执行文件的目录
/usr/lib32 lib64 lib 软件需要使用的库文件
/usr/share 存放共享文件的目录
/usr/local  安装本地程序的一般默认路径
/usr/local/bin 
/var  内容经常变化的目录。此目录下文件的大小可能会改变，如缓冲文件，日志文件，缓存文件，等一般都存放在这里。

`````
* /bin一般存放对于用户和系统来说“必须”的程序（二进制文件）。
* /sbin一般存放用于系统管理的“必需”的程序（二进制文件），一般普通用户不会使用，根用户使用。
* /usr/bin一般存放的只是对用户和系统来说“不是必需的”程序（二进制文件）。比如ubuntu自己的软件
* /usr/sbin一般存放用于系统管理的系统管理的不是必需的程序（二进制文件）。比如ubuntu自家用来管理的软件

* /lib一般存放对于用户和系统来说“必须”的库（二进制文件）。
* /usr/lib一般存放的只是对用户和系统来说“不是必需的”库（二进制文件）

## 文件命令
``````
echo
> ， >> 内容重定向， 第一个是覆盖 第二个是追加到后面
cat     查看文件
nano    查看编辑文件
more
head  打印文件前面的内容
tail  显示文件结尾的内容
hostname 查看主机名

``````

## 管理命令
`````
reboot     重启
shutdown   关机
halt       挂起
`````

## 文档管理
`````
uname     显示系统信息
file      检测文件类型
tar       归档命令 war web archive， jar java archive 
tar  -xvzf 使用gzip 解压缩
 -x  extract 抽取 从存档展开文件
 -f  文件
 -z  用gzip对存档压缩或解压
 -v  verbose 详细显示处理的文件
 -c   创建新的文档
 -r | --append 附加到存档结尾

 gzip  压缩文件
 gunzip 解压缩文件

`````