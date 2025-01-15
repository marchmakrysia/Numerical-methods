clear all
clc
close all

x=-50:20:70;
y=10*rand(1,length(x));
X=[ones(length(x),1) x'];
Y=y';
A=inv(X'*X)*(X'*Y)
xx=-50:70;
w=A(1)+A(2)*xx

X2=[ones(length(x),1) x' x'.^2];
A2=inv(X2'*X2)*X2'*Y
w2=A2(1)+A2(2)*xx+A2(3)*xx.^2

X4=[ones(length(x),1) x' x'.^2 x'.^3 x'.^4]
A4=inv(X4'*X4)*X4'*Y
w4=A4(1)+A4(2)*xx+A4(3)*xx.^2+A4(4)*xx.^3+A4(5)*xx.^4

X6=[ones(length(x),1) x' x'.^2 x'.^3 x'.^4 x.^5 x.^6]
A6=inv(X6'*X6)*X6'*Y
w6=A6(1)+A6(2)*xx+A6(3)*xx.^2+A6(4)*xx.^3+A6(5)*xx.^4+A6(6)*xx.^5+A6(7)*xx.^6

plot(x,y,'*',xx,w,xx,w2,xx,w4,xx,w6)
