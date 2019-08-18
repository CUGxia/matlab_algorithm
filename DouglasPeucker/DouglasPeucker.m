function P=DouglasPeucker(points,epsilon)
% Douglas Peucker algorithm
%
% input
% points: array, size: 2*n
% epsilon: float

% Created by Dorad, cug_xia@foxmail.com 2019/5/15 20:23
% calculate the distance of points.
D=getDistanceFromPointsToLine(points,points(:,1),points(:,end));
[maxD,maxDIdx]=max(D);
if(maxD>=epsilon)
    % need to continue.
    PF=DouglasPeucker(points(:,1:maxDIdx),epsilon);
    PE=DouglasPeucker(points(:,maxDIdx:end),epsilon);
    P=[PF(:,1:end-1),PE];
else
    % return.
    P=[points(:,1),points(:,end)];
end
end

function D=getDistanceFromPointsToLine(points,p1,p2)
d=sqrt(sum((p1-p2).^2));
D=zeros(size(points,2),1);
for i=1:size(points,2)
    D(i)=abs(det([[points(:,i),p1,p2]',ones(3,1)]))./d;
end
end