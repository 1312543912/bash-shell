#! /bin/bash
# printf命令:printf命令是模仿c程序库中的printf命令，printf移植性比echo好。printf可以制定字符串宽度和左右对齐方式等。printf不会像echo自动添加换行符，我们可以手动添加\n.语法：printf format-string [arguments]
# 1.printf功能之%s %c %d %f都是格式替代符 %-10指定一个宽度为10个字符（-表示左对齐1，没有表示右对齐，任何字符都在显示在10个字符内，不足自动以空格填充，超过会将全部内容显示出来）  
printf "%-10s %-8s %-4s\n" 姓名  性别  体重kg
printf "%-10s %-8s %-4f\n" xuxiuquan nan 70
printf "%-10s %-8s %-4.2f\n" xuxiuquan nan 70
printf "%-10s %-8s %-4.2f\n" xuxiuquan nanisxuxiuquanitisverygood 70
