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
