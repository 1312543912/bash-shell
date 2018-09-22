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
