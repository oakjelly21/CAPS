R=load('D:\Eric\My CAPS homework\rating1.txt');
[U1,W1,V1]=svd(R.R);
w1=W1(1:3,1:3);
v1=(V1')(1:3,:);
j1=w1*v1;
K1=[j1(:,1) j1(:,3) j1(:,7)];
input=[4 2 3];
pi1=input/K1;
Result_1=pi1*j1;
Result_1=round(Result_1);
Real=[4 3 2 2 3 3 3 2 3 1 2 3 2 2 3 4 3 3 3 3]
disp(" These are the predictions bsed on 5 people");
Result_1
Error_1=Real-Result_1
R=load('D:\Eric\My CAPS homework\rating2.txt');
[U,W,V]=svd(R.R);
w=W(1:3,1:3);
v=(V')(1:3,:);
j2=w*v;
K2=[j2(:,1) j2(:,3) j2(:,7)];
pi2=input/K;
Result_2=pi2*j2;
Result_2
Result_2=roundb(Result_2);
disp(" These are the predictions based on 15 people");
Result_2 
Error_2=Real-Res