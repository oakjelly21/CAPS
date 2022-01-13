load_faces
[U,W,V]=svds(X-ones(400,1)*mean(X),20);
W=W^2;
figure(1);
plot(diag(W),'o')
title('The first 20 eigenvalues')
figure(2);
for i=1:20,
 subplot(4,5,i)
 svec=V(:,i);
 imshow(reshape(svec,[112,92]),[min(svec),max(svec)])
 title({'eigenvector number';i})
 end