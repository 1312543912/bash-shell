#! /bin/bash
# 运算符: 1.算术运算符 2.关系运算符 3.布尔运算符 4.字符串运算符 5.文件测试运算符
# 算术运算符: bash原生不支持算术运算符,可以通过awk和expr等实现（自行百度),常用expr
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

