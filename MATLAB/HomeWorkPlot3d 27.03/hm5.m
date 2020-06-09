[x,y,z] = meshgrid(-3:0.05:3); % область и шаг
F=(-x.^2.*z.^3)-(9.*y.^2.*z.^3)./80+(x.^2+(9.*y.^2)./4 +z.^2 - 1).^3; % функция
C=0; % будем строить поверхность F(x,y,z)=C
%дальше все взято из примера
% MATLAB |3D Vis..|Volume Vis..|Connect.. Equal Values with Isosurfaces

hpatch = patch(isosurface(x,y,z,F,C));
isonormals(x,y,z,F,hpatch);
set(hpatch,'FaceColor','red','EdgeColor','none');
camlight left; lighting phong;
view([-65,20]);

%Через isosurface было бы аккуратнее , но ведь результат тот же
