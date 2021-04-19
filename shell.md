# SHELL 理解 
## shell 是什么
* shell是用C语言写的
* kenel shell user
    - kenel 用来驱动硬件干活
    - kenel 是二进制的 用户无法是直接使用的
    - shell 是命令解释器，把命令解释成二进制

# SHELL语法
## '#!' 定义脚本运行的位置
`````
#! /bin/bash
`````

## '#' 用来表示注释
``````
# description
``````

## 运行脚本
* ./  这个需要给脚本赋予权限
* bash sh 解释器直接运行 脚本不需要赋予权限

## shell 中的特殊符号
`````
~ home目录
- 上次目录
！ 执行历史命令 ！！执行上一次命令
$ 变量
& 后台执行
* 通配符 匹配所有
？通配符 匹配除回车以外的字符
；如果一行中执行多个命令
| 管道 上一个命令的输出作为下一个命令的输入
\ 转译命令 用它原本的作用而非通配符 3 \* 3
`` 命令里面执行命令  echo " Date is `date`"
'' 字符串 里面不解释变量
"" 字符串 解释变量
$?	上个命令的退出状态，或函数的返回值。 看上一个命令是否执行成功
`````
expr 表达式命令
expr 3 + 1

bc 计算命令
## $x
`````
$0	当前脚本的文件名
$n	传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
$#	传递给脚本或函数的参数个数。
$*	传递给脚本或函数的所有参数。
$@	传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
$?	上个命令的退出状态，或函数的返回值。
$$	当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。
$(())  可以用来做计算
exit 命令表示结束程序，并且返回1-255中的一个值
`````

## echo
将内容输出到显示器上
* -n 不在最后自动换行
* -e 后面有转译字符
* \a 警告声音
* \t 表示空格
* \n  表示换行 
* \b  删掉所有前面的字符 
* \c  最后不加上换行符号
``````
echo -e 里面带转译字符 \b \c .....
输出字体带颜色

 echo -e "\033[背景色:字体颜色 字符串 \033[属性 效果"
``````

## read
`````
read 命令常用选项
-p 打印信息
-t 限定输入时间
-s 不显示输入内容
-n 输入n个字符
`````

## 变量
* 变量就是物理地址的逻辑地址方便使用
![Alt text](./share/photos/3.png?raw=true "Title")

### 变量类型
* 本地变量 bash_profile .bash_rc
* 全局变量 保存在/etc/profile /etc/bashrc 下面
* 用户自定义变量 
 `````
 name="helloworld"
 echo "$name"

 取消变量
 unset $name
 `````

## 数组

### 定义
* 名称 = (元素1 元素2 元素3)

### 读取
`````
${array[0]} 获得数组中某个元素

echo "${array1[@]}" 打印数组中的所有元素
echo "!${array1[@]}" 打印数组中的所有元素的索引
echo "${array1[@]:2}" 从数组中第二个开始打印
echo "${array1[@]:2:4}" 从数组中第二个开始打印到第四个

`````

### 关联数组
`````
关联数组就是下标是名字而不是0 1 2 3， 就是json的变种
使用 declare -A 声明

declare -A ass_Array2


ass_Array2=([name]='fang' [age]=10)

echo "${ass_Array2[@]}"
echo "${!ass_Array2[@]}"
`````

## shell 流程控制语句

### 数学比较运算

-eq 等于
-gt 大于
-lt 小于
-ge 大于 等于
-le 小于 等于
-ne 不等于
`````
 test 1 -eq 2; echo $?

 0 表示true 1 表示false 
`````

### 文件判断比较
`````
-d 文件是否存在且为目录
-e 文件是否存在
-f 文件是否存在且为文件
-r 文件是否存在且为可读
-s 文件是否存在且不为空
-w 文件是否存在且可写
-x 文件是否存在且可执行
-O 文件是否存在且为当前用户拥有
-G 文件是否存在且默认组为当前用户组

file1 -nt file2 文件1 是否比文件2 新
file1 -ot 发ile 文件1 是否比文件2 旧 
`````

### 字符串判断比较
`````
==
!=
-n 字符串长度是否大于0
-z 字符串长度是否为0
`````

### 逻辑运算
`````
&&
||
! 
`````


## if 语法

if [ condition ] then 。。。。。 fi condition 为以上所有运算

`````
if [ ! -d $path ] 
 then 
  mkdir $path
fi

if [ ! -d $path ] 
 then 
  mkdir $path
 elif [ xxxx ]
   then
fi    


if((数学表达式));then  

if [[ 字符串匹配 ]];then
if [[ $s ~ r* ]];then 变量是否匹配r开头 
`````

## for 语法

`````
  for var in var1 var2 var3
    do
     .....
  done

  for v in `seq 1 9`
    do
     echo v
  done
`````

`````
 C语言的写法

  for ((变量;条件;自增减运算))
    do
     .....
  done

  for ((i=1;i<10;i--))
    do
     echo $i
  done
    for ((i=1,x=6;i<10;i--,x++))
    do
     echo $i
  done
`````

 `````
 for 的赋值方式
直接赋值
for var in 1 2 3 4
 do
  .....
done

命令负值
for var in `seq 1 9`
 do
  ....
done

字符串赋值
for var in kate\'s bag is beatiful
  do
   ...
done

数组赋值

declare -A ass_Array2

ass_Array2=([name]='fang' [age]=10)

for i in ${ass_Array2[@]}
 do
  echo $i
done
`````

### 循环控制

#### sleep

让循环休眠 x 秒钟

sleep x  

##### continue
跳到下一次循环

#### break
跳出循环

break 1  跳出本循环
break 2  直接跳出外循环


