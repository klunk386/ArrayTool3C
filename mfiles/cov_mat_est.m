function cm = cov_mat_est (sw,stan,snum,ctyp);

%------------------------------------------
% Covariance matrix estimation

for j = 1:stan
  for l = 1:stan

    % Build covariance matrix
    cm(j,l) = (sw(j,:)*sw(l,:)')/snum;

  end
end

%------------------------------------------
% Matrix inversion (if needed)

switch ctyp
case 2

  %------------------------------------------
  % Diagonal loading

  % Normalization
  for j = 2:stan
    for l = 1:j-1
      cm(j,l) = cm(j,l)/abs(sqrt(cm(j,j)*cm(l,l)));
      cm(l,j) = cm(l,j)/abs(sqrt(cm(j,j)*cm(l,l)));
    end
  end

  for j = 1:stan
    cm(j,j) = 1;
  end

  % Loading parameters
  diagl = 0.001;

  dn = (1-diagl)*eye(stan);
  dl = diagl*eye(stan);

  % Matrix diagonal loading
  cm = inv((dn*cm)+dl);

case 3

  %------------------------------------------
  % S.V.D

  cm = pinv(cm);

case 4

  %------------------------------------------
  % MUSIC

  [U,S,V] = svd(cm);
  cm = U(:,2:end)*U(:,2:end)';

end

return;
