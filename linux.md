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
 -t  查看归档文件的内容

 gzip  压缩文件
 gunzip 解压缩文件
 cp   拷贝命令
 xargs 将管道的输出内容合并成一行数据，使用空格分割

 ln  创建链接文件
   硬链接 创建两个一模一样的文件 相互关联的
   -s 符号链接  创建

dirname 查看文件所在的目录
basename 输出文件的基本名 去掉路径和 后缀
cd -P 即使遇到超链接 也通过物理路径过去
`````

## 设备管理
`````
mount /dev/设备块文件 /目标文件夹
unmount /目标文件夹  解除挂载
fdisk -l 磁盘管理
df 查看磁盘的使用情况 显示文件系统挂载在了哪个文件夹下面 
df -ah 
`````

## 作业管理
``````
jobs  显示后台的作业
kill %n 杀死进程
ps   显示进程
cut   对每行文本进行剪切处理 cut -c 1-3 hello.txt hello文本中的每一行只显示第一个到第三个字符 
``````

# SHELL
`````
$? 刚才命令返回的结果 0:成功  ！0 失败
$# 获取参数个数
$n 获取第几个参数
$@ 获得所有参数
shift  向左移动参数

命令组合
a && b a成功后再执行b
a || b a执行失败之后再执行b
a；b  a执行之后再执行b

命令 &  将命令放到后台执行 不占用主线程

netcat
做tcp ip ，udp通信
ServerSocket server，listener
Socket connection，pocket

nc 进行聊天
nc -l port  监听本机端口号
nc ip port  启动客户端 🔗 到IP地址 port

nc 传递文件
nc -l 8888 > test.txt 接受内容重定向到文件
nc ip 8888 < test.txt 接受文件内容 发送

nc 检测端口是否开通
nc -v -w 2
`````

## 修改Ubuntu软件园列表
* /etc/apt/souce.list
* sudo apt-get update
* apt-get upgrade

## VM 几种网络设置方式
* 桥接 briadge 使用宿主机的网卡，通过网关， 可以联通其他的宿主机，但是如果网关挂了，就无法与宿主通信
* NAT Network address translation 网络地址转换 宿主机给自己的虚拟机一个独立的网段 虚拟机无法与其他的和宿主机在同一个网段的机器通信
* 配置静态ip
   - 