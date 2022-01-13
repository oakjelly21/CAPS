load ('Nobel_vs_choco.txt')
nobel=data(:,1);
choco=data(:,2);
plot(nobel,choco,"o")
axis([0,85,0,12])
xlabel('Nobel laureates per capita')
ylabel('Chocolate consumption per capita per year')
X=ones(length(nobel),2);
X(:,1)=nobel;
Y=choco;
p=pinv(X)*Y;
xx=0:1:35;
hold on;
plot(xx,xx*p(1)+p(2))
my_nobel = 10*(1+7);
my_choco = .5*(0+7);
hold on;
plot(my_nobel,my_choco,"x");
X = [X; my_nobel 1];
Y = [Y; my_choco];
p=pinv(X)*Y;
xx=0:1:85;
hold on;
plot(xx,xx*p(1)+p(2))