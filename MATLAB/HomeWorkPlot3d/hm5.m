[x,y,z] = meshgrid(-3:0.05:3); % ������� � ���
F=(-x.^2.*z.^3)-(9.*y.^2.*z.^3)./80+(x.^2+(9.*y.^2)./4 +z.^2 - 1).^3; % �������
C=0; % ����� ������� ����������� F(x,y,z)=C
%������ ��� ����� �� �������
% MATLAB |3D Vis..|Volume Vis..|Connect.. Equal Values with Isosurfaces

hpatch = patch(isosurface(x,y,z,F,C));
isonormals(x,y,z,F,hpatch);
set(hpatch,'FaceColor','red','EdgeColor','none');
camlight left; lighting phong;
view([-65,20]);

%����� isosurface ���� �� ���������� , �� ���� ��������� ��� ��
