function wdft_stan (nf,t0,t1,ind)

set_global;

%------------------------------------------
% Frequency averaging

switch cfg.ftyp
case 1
  fr = par.fr(nf)+par.df;
case 2
  fr = 10.^(log10(par.fr(nf))+par.df);
end

%------------------------------------------
% Note: Variable reallocation is necessary
%       for the parfoor loop.

rec = dat.rec(t0:t1,:,:);
dt = dat.dt;

tnum = dat.tnum;
stan = dat.stan;
snum = cfg.snum;
favn = cfg.favn;

wlen = par.wlen;
hw = par.hw;

%------------------------------------------
% Variable pre-allocation

cexp = exp(2*pi*1i*(1:wlen)'*fr*dt);
omat = ones(1,cfg.favn);

swv = zeros(stan,snum*favn);
swy = zeros(stan,snum*favn);
swx = zeros(stan,snum*favn);

%------------------------------------------
% Loop over stations (parallel?)

parfor ns = 1:stan

  swv2 = zeros(1,snum*favn);
  swy2 = zeros(1,snum*favn);
  swx2 = zeros(1,snum*favn);

  for nw = 1:snum

    twinv = hw.*rec(ind(nw):ind(nw)+wlen-1,1,ns);
    twiny = hw.*rec(ind(nw):ind(nw)+wlen-1,2,ns);
    twinx = hw.*rec(ind(nw):ind(nw)+wlen-1,3,ns);

    wi = [1:favn]+((nw-1)*favn);

    swv2(wi) = 2*sum((twinv*omat).*cexp)/wlen;
    swy2(wi) = 2*sum((twiny*omat).*cexp)/wlen;
    swx2(wi) = 2*sum((twinx*omat).*cexp)/wlen;

  end
  
  swv(ns,:) = swv2;
  swy(ns,:) = swy2;
  swx(ns,:) = swx2;
end

dat.swv = swv;
dat.swy = swy;
dat.swx = swx;

return;
