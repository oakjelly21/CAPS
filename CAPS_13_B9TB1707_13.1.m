addpath('D:\Eric\My CAPS homework\DeepLearnToolbox\NN');
addpath('D:\Eric\My CAPS homework\DeepLearnToolbox\util');
fid=fopen('t10k-images-idx3-ubyte','r','b');
fread(fid,4,'int32');
test_img=fread(fid,[28*28,10000],'uint8');
test_img=test_img';
fclose(fid);
fid=fopen('t10k-labels-idx1-ubyte','r','b');
fread(fid,2,'int32');
test_lbl=fread(fid,10000,'uint8');
fclose(fid);
fid=fopen('train-images-idx3-ubyte','r','b');
fread(fid,4,'int32');
train_img=fread(fid,[28*28,60000],'uint8');
train_img=train_img';
fclose(fid);
fid=fopen('train-labels-idx1-ubyte','r','b');
fread(fid,2,'int32');
train_lbl=fread(fid,60000,'uint8');
fclose(fid);
mu = mean(train_img);
sigma = max(std(train_img), eps);
train_img = (train_img - mu)./sigma;
test_img = (test_img - mu)./sigma;
A=eye(10,10);
train_d=A(train_lbl+1,:);
test_d=A(test_lbl+1,:);
nn = nnsetup([784 100 10]);
n2 = nnsetup([784 30 30 10]);
n3 = nnsetup([784 100 30 10]);
n4 = nnsetup([784 200 50 25 10]);
n5 = nnsetup([784 500 200 50 25 10]);
for i=1:10,
 opts.numepochs = 1;
 opts.batchsize = 100;
 [nn, L] = nntrain(nn, train_img, train_d, opts);
 pred = nnpredict(nn, test_img);
 acc(i)=sum(pred-1==test_lbl)/10000*100;
 trial(i)=i;
 [n2, L] = nntrain(n2, train_img, train_d, opts);
 pred2 = nnpredict(n2, test_img);
 acc2(i)=sum(pred2-1==test_lbl)/10000*100;
 trial2(i)=i;
 [n3, L] = nntrain(n3, train_img, train_d, opts);
 pred3 = nnpredict(n3, test_img);
 acc3(i)=sum(pred3-1==test_lbl)/10000*100;
 trial3(i)=i;
 [n4, L] = nntrain(n4, train_img, train_d, opts);
 pred4 = nnpredict(n4, test_img);
 acc4(i)=sum(pred4-1==test_lbl)/10000*100;
 trial4(i)=i;
 [n5, L] = nntrain(n5, train_img, train_d, opts);
 pred5 = nnpredict(n5, test_img);
 acc5(i)=sum(pred5-1==test_lbl)/10000*100;
 trial5(i)=i;
 end
plot(trial,acc,trial2,acc2,trial3,acc3,trial4,acc4,trial5,acc5)
legend('two-layer net','three-layer net','three-layer netv2','four-layer net','five-layer net')
xlabel('training counts')
ylabel('accuracy [%]')