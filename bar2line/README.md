# bar2line

该函数用于将柱状图转换为折线图坐标。



# Example

```matlab
% data
x=1:10;
y=rand(10,1)*100;
width=1;

figure;
% 绘制 bar
subplot(1,2,1);
bar(x,y,width);

% 绘制 line
subplot(1,2,2);
[lx,ly]=bar2line(x,y,width);
plot(lx,ly,'r')
```

![Result](<https://raw.githubusercontent.com/Doradx/matlab_algorithm/master/bar2line/image/bar2line-result.jpg>)



# Author

[Dorad](https://blog.cuger.cn), cug.xia@gmail.com

