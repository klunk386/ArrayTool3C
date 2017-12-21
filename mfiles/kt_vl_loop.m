function kt_vl_loop ()

set_global;

%------------------------------------------
% Variable reallocation (for parallelization)

cx = dat.cx;
cy = dat.cy;
swv = dat.swv;
swx = dat.swx;
swy = dat.swy;
stan = dat.stan;

kr = par.kr;
csk = par.csk;
snk = par.snk;

knum = cfg.knum;
vnum = cfg.vnum;
snum = cfg.snum;
favn = cfg.favn;
ctyp = cfg.ctyp;

%------------------------------------------
% Covariance matrix (vertical)
cmv = cov_mat_est(swv,stan,favn*snum,ctyp);

%------------------------------------------
% Loop over K and V

PV = zeros(knum,vnum);
PR = zeros(knum,vnum);
PT = zeros(knum,vnum);

parfor nk = 1:knum

  PV_buf = zeros(1,vnum);
  PR_buf = zeros(1,vnum);
  PT_buf = zeros(1,vnum);

  %------------------------------------------
  % Combining horizintal components
  swh = swx*csk(nk)+swy*snk(nk);

  %------------------------------------------
  % Covariance matrix (horizontal)
  cmh = cov_mat_est(swh,stan,favn*snum,ctyp);

  for nv = 1:vnum

    %------------------------------------------
    % Steering vector
    expr = exp(1i*kr(nv)*(csk(nk)*cx+snk(nk)*cy));
    expl = exp(1i*kr(nv)*(snk(nk)*cx-csk(nk)*cy));

    %------------------------------------------
    % F-K algorithm core
    PV_buf(nv) = fk_alg_core(cmv,ctyp,stan,expr);
    PR_buf(nv) = fk_alg_core(cmh,ctyp,stan,expr);
    PT_buf(nv) = fk_alg_core(cmh,ctyp,stan,expl);

  end

  PV(nk,:) = PV_buf;
  PR(nk,:) = PR_buf;
  PT(nk,:) = PT_buf;
end

out.PV = PV;
out.PR = PR;
out.PT = PT;

return;
