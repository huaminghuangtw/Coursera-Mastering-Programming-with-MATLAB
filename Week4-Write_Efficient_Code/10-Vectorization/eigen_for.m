function a= eigen_for(A3D)
a = zeros(1,size(A3D,1));
for ii = 1:length(a)
    a(ii) = max(abs(eig(squeeze(A3D(ii,:,:)))));
end