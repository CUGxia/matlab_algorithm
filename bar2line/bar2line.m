function [lx,ly] = bar2line(bx,by,width)
%BAR2LINE is designed to transform chart from bar to line type.
%   Author Dorad, cug.xia@gmail.com, 2020/4/19 11:48
lx=[];
ly=[];
for i=1:length(bx)
    if i==1
        lx=[lx,bx(i)-width/2];
        ly=[ly,0];
    end
    lx=[lx,bx(i)-width/2,bx(i)+width/2];
    ly=[ly,by(i),by(i)];
    if i==length(bx)
        lx=[lx,bx(i)+width/2];
        ly=[ly,0];
    end
end
end

