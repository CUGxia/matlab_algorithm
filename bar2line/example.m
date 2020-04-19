close all
clear
clc

% data
x=1:10;
y=rand(10,1)*100;
width=1;

figure;
% »æÖÆ bar
subplot(1,2,1);
bar(x,y,width);
title('bar')

% »æÖÆ line
subplot(1,2,2);
[lx,ly]=bar2line(x,y,width);
plot(lx,ly,'r')
title('line')
