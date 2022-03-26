a=[1 3 5 7 9];
x=size(a);
b=[];
for i = 1:x(2)
   b(i)=a(i);   %access each element
end
%
c=transpose(a); % row to column matrix
%
d=[];
for i = 1:x(2)
   if i<=3
       d(i)=a(i);  %get first 3
   end
end
%
e=[];
for i = 1:x(2)
   if i>x(2)-3
       e(i)=a(i); %get last 3
   end
end