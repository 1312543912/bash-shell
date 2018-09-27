# bash-shell

## 1.sh 初识shell
+ 什么是shell：Shell 是一个用 C 语言编写的程序，shell英文意思是壳，就是计算机的一个壳，通过这个壳我们可以很计算机进行交互，我们都知道计算机最终是通过操纵硬件来完成计算等操作的，硬件是通过内核来驱动的，我们给内核发出命令就是通过shell来完成的，凡是帮助我们和电脑交互的接口都可以叫做shell，所以GUI和命令行都可以叫做shell，只不过在命令行之前还没有出现GUI，这就可以理解为什么bash shell的存在了。
+ #! /bin/bash:每个shell都是以这个开头，告诉电脑以bash shell来解析
```
#! /bin/bash
echo "hello world !"
```

## 2.sh 变量
```
#! /bin/bash
# 变量 如果单独用只要在变量名前加$,如果跟字符串拼接使用要用${变量}
user="xxq"
echo $user
# 循环变量 
for skill in Ada Coffe Actin Java; do
	echo "I am good at ${skill} Script"
done
# 只读变量
myurl="http://www.baidu.com"
readonly myurl
# myurl="http://www.google.com"
# 删除变量
name="xxq"
echo "删除前${name}"
unset name
echo "删除后${name}"
# 字符串 '':单引号是不允许使用变量的  "":双引号是可以使用变量的
# 字符串获取长度  #+变量
string="abcd"
echo ${#string}
# 提取子字符串左侧闭区间右侧开区间
string="wo shi xu xiu quan"
echo ${string:1:4}
# shell数组 数组名=（名1，名2）
array_name=("a" "b" "c")
echo ${array_name[0]}
# @符号访问所有元素
echo ${array_name[@]}
# 获取数组长度 #array_name[@]
echo ${#array_name[@]}
echo ${#array_name[*]}
# 注释
# 这个就是注释
#如果在开发过程中，遇到大段的代码需要临时注释起来，过一会儿又取消注释，怎么办呢每一行加个符号太费力了，可以把这一段要注释的代码用一对花括号括起来，定义成一个函数，没有地方调用这个函数，这块代码就不会执行，达到了和注释一样的效果。
```

## 3.sh 向脚本传参数
```
#! /bin/bash
# shell传递参数:我们可以在执行 Shell 脚本时，向脚本传递参数，脚本内获取参数的格式为：$n。n 代表一个数字，1 为执行脚本的第一个参数，2 为执行脚本的第二个参数，以此类推……
# 运行  /bin/sh   3.sh 1 2 3
echo "执行文件名$0"
echo "第一个参数$1"
echo "第二个参数$2"
echo "第三个参数$3"

```

## 4.sh 运算符
```
#! /bin/bash
# 运算符: 1.算术运算符 2.关系运算符 3.布尔运算符 4.字符串运算符 5.文件测试运算符
# 算术运算符: bash原生不支持算术运算符,可以通过awk和expr等实现（自行百度),常用expr
# ==:等于 !=:不等于
jia=`expr 1 + 2`
echo "1+2=${jia}"
jian=`expr 2 - 1`
echo "2-1=${jian}"
if [ $jia == $jian ]
then
	echo "a 等于 b"
fi
if [ $jia != $jian ]
then
	echo "a不等于b"
fi
# 关系运算符 大于：-gt  小于：-lt  大于等于：-ge  小于等于： -le 这里使用了if then else fi语法注意if else用法
a=10
b=20
if [ $a -gt $b ]
then
	echo "a>b a:${a}"
else
	echo "a<b b:${b}"
fi
# 布尔运算符：!:非运算  -o：或运算  -a：与运算
a=10
b=100
c=50
if [ $c -lt $b -a $c -gt $a ]
then
	echo "a< c <b"
else
	echo "(a < c < b) is false"
fi
# 逻辑运算符: &&：与  ||:或  与布尔运算符区别在于if条件只能是boolean值所以布尔与运算时候不用加[]因为运算出来就是boolean但是逻辑运算需要加[]将结果转成boolean
a=10
b=20
if [ [$a -lt 100 && $a -gt 0] ]
then
	echo "true"
else
	echo "false"
fi
# 字符串运算符：=：测试两个字符串是否相等 !=:测试两个文件是否不想等 -z:测试字符串是否长度为0，为0返回true   -n:测试字符串长度是否为0，不为0返回true str：检查字符串是否为空，不为空返回true
a="abc"
if [-z $a]
then
	echo "-z 长度为0"
else
	echo "-z 长度不为0"
fi
# 文件测试运算符：-x file:是否为可执行文件，是否会true   -r file:是否为可读文件，是返回true   -d file:是否为目录，是返回true。   -w file:是否为可写文件，是否会true
file="/usr/local/bin/nginx"
if [ -x $file ]
then 
	echo "file 可执行"
else
	echo "file不可执行"
fi
if [ -r $file ]
then
	echo "file 可读"
else
	echo "file不可读"
fi
if [ -w $file ]
then
	echo "file 可写"
else
	echo "file不可写"
fi
if [ -d $file ]
then
	echo "file 是目录"
else
	echo "file不是目录"
fi
```


## 5.sh echo命令
```
#! /bin/bash
# echo命令
# 1.普通字符输出
echo "it is a sample test"
# 2.转义字符输出加\
echo "\"it sis a sample test \""
# 3.显示变量 read：命令从标准输入中读取一行，并把输入行的每个字段值指定给shell变量
read name
echo "$name it is test"
# 4.显示换行 \n:换行    -e：开启转义 
echo -e "ok! \n"
echo "it is a test"
# 5.显示转换不换行 \c:不换行  -e：开启转义
echo -e "ok ! \c"
echo "it is a test"
# 6.指定输入文件 echo xxx > xxx
echo "it is a test" > file
# 7.显示命令执行结果
echo `date`
```

## 6.sh  printf命令
```
#! /bin/bash
# printf命令:printf命令是模仿c程序库中的printf命令，printf移植性比echo好。printf可以制定字符串宽度和左右对齐方式等。printf不会像echo自动添加换行符，我们可以手动添加\n.语法：printf format-string [arguments]
# 1.printf功能之%s %c %d %f都是格式替代符 %-10指定一个宽度为10个字符（-表示左对齐1，没有表示右对齐，任何字符都在显示在10个字符内，不足自动以空格填充，超过会将全部内容显示出来）  
printf "%-10s %-8s %-4s\n" 姓名  性别  体重kg
printf "%-10s %-8s %-4f\n" xuxiuquan nan 70
printf "%-10s %-8s %-4.2f\n" xuxiuquan nan 70
printf "%-10s %-8s %-4.2f\n" xuxiuquan nanisxuxiuquanitisverygood 70
```

## 7.sh  test命令
```
#! /bin/bash
# test:shell test命令用于检查某个条件是否成立，可进行数值、字符串和文件三方面测试,shell可以写linux的命令
# test:数值检测
# -eq:等于  -ne:不等于   -gt:大于  -ge:大于等于    -lt:小于    -le:小于等于  
num1=1
num2=2
if test $num1 -eq $num2
then
	echo "num1=num2"
else
	echo "num1!=num2"
fi
# test：字符串测试 =  !=  -z:字符串长度为0为真   -n：字符串长度不为0为真
if test $num1 = $num2
then
	echo "两个字符串相等"
else
	echo "两个字符串不相等"
fi
# test:文件测试  -e:文件存在为真
cd /bin
pwd
if test -e ./bash
then
	echo "文件已经存在"
else
	ehco "文件不存在"
fi


```

## 8.sh  流程控制
```
#! /bin/bash
# 流程控制：if else
a=1
b=2
if [ $a == $b ]
then
	echo "a=b"
	echo "a=b"
else
	echo "a!=b"
fi
# if elseif else
if [ $a == $b ]
then
	echo "a=b"
elif [ $a -gt $b ]
then
	echo "a>b"
else
	echo "a<b"
fi
# for循环   for item in item1 item2 .... itemN do  comman1 command2  done
for loop in 1 2 3 4 5
do
	echo $loop
done
# while语句 while 条件 do  command done
b=10
while(( $b>0 ))
do
	echo "b=${b}"
	b=`expr $b - 1`
done
# case:匹配某个命令就去执行   case 值 in command1 command2 command3  。。。 esac
echo '输入1到4之间数字:'
read number
case $number in
1) echo "你选择了1"
;;
2) echo "你选择了2"
;;
*) echo "你选择了1-2（*匹配所有）"
;;
esac
# break和continue
while :
do
	echo "输入航1-10数字"
	read number
	case $number in
	1|2|3|4|5) echo "你输入的数字是：${number}"
	;;
	*) echo "你输入的数字不是1-5 结束"
	break
	;;
	esac
done
# continue将break换成continue就可以一直输入判断

```

## 9.sh  shell函数
```
#! /bin/bash
# shell函数 定义：functionname() {}  先声明后调用
# 命令模式 u的相对操作ctrl + R
# 没有返回值的函数
demoFunc() {
	echo "这是demoFunc函数"
}
echo "函数执行"
demoFunc
echo "函数结束"
# 有返回值的函数, 函数返回值在调用该函数后通过$?来获得
funcReturn() {
	a=1
	b=2
	return `expr $a + $b`
}
funcReturn
echo "输出结果:$?!"
# 函数传递参数
funcWithParam() {
	echo "第一个参数$1"
	echo "第二个参数$2"
	echo "第三个参数$3"
}
funcWithParam 1 2
# 注意，$10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数。

```

## 10.sh  重定向
```
#! /bin/bash
# shell输入输出重定向
# command > file:输出重定向，将command命令输出到file中    command >> file:输出重定向，将command命令以追加的方式输出到file中
# command < file:输入重定向，将command命令输入内容到file中
# 输出重定向：> 将who这个命令输出到users中
who > users
# 输出重定向追加模式： >> 将txtyspring@gmail.com追加到user
echo "txtyspring@gmail.com" >> users
# 输入重定向： <   查看users中有多少行文本并将输入输出到user中
wc -l users < user
# 深入了解重定向
# 一般情况下，每个Unix/Linux命令运行都会打开三个文件：
# 标准输入文件：stdin文件描述为0，Unix程序默认从stdin读取数据
# 标准输出文件：stdout：stdout文件描述为1，unix程序默认向stdout输出数据
# 标准错误文件：stderr的文件描述符为2，unix程序回想stderr流中写入错误信息
# 默认情况使用command > file实际上是将stdin重定向到file中，如果要让stderr重定向到file，可以command 2 > file，这样写
# 将stdout和stderr合并后重定向到file，command >> file 2>&1
# /dev/null文件
# 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：

#command > /dev/null
# /dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。

如果希望屏蔽 stdout 和 stderr，可以这样写：command > /dev/null 2>&1
```

## 11.sh  文件包含
```
#! /bin/bash
# shell文件包含 命令格式：. filename或者source filename 和其他语言一样，shell可以包含外部脚本，这样可以很方便封装一些公用的代码作为独立的文件

source test1.sh
echo "i am 11.sh"
```

# 使用方式
+ git clone https://github.com/1312543912/bash-shell.git
+ 运行bash：/bin/bash xxx.sh或者chmod +x ./test.sh  （使脚本具有执行权限）然后./test.sh（执行脚本）

# 联系方式
## mail
txtyspring@gamil.com
