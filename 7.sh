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

