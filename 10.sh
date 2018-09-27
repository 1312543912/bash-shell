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

