function ps = fk_alg_core (cm,ctyp,stan,expc)

%------------------------------------------
% Power spectrum computation

switch ctyp
case 1
  % Classic F-K
  ps = real(expc'*cm*expc)/(stan^2);
case {2 3 4}
  % High-resolution methods
  ps = 1/real(expc'*cm*expc);
end

return;
