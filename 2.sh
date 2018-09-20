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

