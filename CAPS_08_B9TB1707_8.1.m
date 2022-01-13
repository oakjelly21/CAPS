trial =10;
for i =3:13
Box = rand(1,trial) < 0.4; 
F_rand = rand(1,trial);
F(Box==1) = F_rand(Box==1) < 3/4;
F(Box==0) = F_rand(Box==0) < 1/4;
printf("The probability is %f for %d trials\n",(sum((F==1))/(trial)),trial);
trial = floor(10^(i/2));
clear Box;
clear F_rand;
clear F;
end