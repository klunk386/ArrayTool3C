function res_bnd ()

set_global;

%------------------------------------------
% Compute resolution limits

cn = 1;

for j = 1:dat.stan
  for l = 1:dat.stan

    % Compute interdistances
    dx = dat.cx(j)-dat.cx(l);
    dy = dat.cy(j)-dat.cy(l);

    dd(cn) = sqrt(dx^2+dy^2);
    cn = cn + 1;

  end
end

% Exclude 0-interdistances
dd = dd(find(dd ~= 0));

dd_min = min(dd);
dd_max = max(dd);

% Wavenumber bounds
par.kmin = pi/dd_max;
par.kmax = pi/dd_min;

return;
