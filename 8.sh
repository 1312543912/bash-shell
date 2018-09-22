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
