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
