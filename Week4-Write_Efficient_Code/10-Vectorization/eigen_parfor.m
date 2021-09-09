function a= eigen_parfor(A3D)
a = zeros(1,size(A3D,1));
parfor ii = 1:length(a)
    a(ii) = max(abs(eig(squeeze(A3D(ii,:,:)))));
end

