fid=fopen('D:\Eric\My CAPS homework\t10k-images-idx3-ubyte','r','b');
fread(fid,4,'int32');
data=fread(fid,[28*28,10000],'uint8');
fclose(fid);
fid=fopen('D:\Eric\My CAPS homework\t10k-labels-idx1-ubyte','r','b');
fread(fid,2,'int32');
label=fread(fid,10000,'uint8');
addpath('D:\Eric\My CAPS homework\liblinear-2.30\matlab');
tr_label = label(1:5000);
tr_data = data(:,1:5000);
model = train(tr_label,sparse(tr_data)');
te_label = label(5001:6000);
te_data = data(:,5001:6000);
pred_label = predict(te_label,sparse(te_data)',model);
sample1 = imread('D:\Eric\My CAPS homework\pic3.png');
sample = mean(sample1,3);
predict([3], sparse(reshape(sample',1,28*28)), model)
sample1 = imread('D:\Eric\My CAPS homework\pic71.png');
sample = mean(sample1,3);
predict([7], sparse(reshape(sample',1,28*28)), model)