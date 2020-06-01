a=2*pi;
[X,Y]=meshgrid(-1:0.01:1,-1:0.01:1);
R=sqrt(X.^2+Y.^2);
f=(2*besselj(1,a*R(:))./R(:)).^2;
mesh(X,Y,reshape(f,size(X)));
%axis vis3d
set(gca,'Zscale','Log')