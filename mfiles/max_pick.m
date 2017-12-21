function max_pick (nf)

set_global;

%------------------------------------------
% Picking maxima on KxKy plane

[rv,cv] = localMaximum(out.PV,[5 5],true);
[rr,cr] = localMaximum(out.PR,[5 5],true);
[rl,cl] = localMaximum(out.PT,[5 5],true);

%------------------------------------------
% Exclude border maxima (on wavenumer)
ibv = find(rv ~= 1 & rv ~= cfg.knum);
ibr = find(rr ~= 1 & rr ~= cfg.knum);
ibl = find(rl ~= 1 & rl ~= cfg.knum);

rv = rv(ibv);
rr = rr(ibr);
rl = rl(ibl);

cv = cv(ibv);
cr = cr(ibr);
cl = cl(ibl);

%------------------------------------------
% Exclude border maxima (on velocity)
ibv = find(cv ~= 1 & cv ~= cfg.vnum);
ibr = find(cr ~= 1 & cr ~= cfg.vnum);
ibl = find(cl ~= 1 & cl ~= cfg.vnum);

rv = rv(ibv);
rr = rr(ibr);
rl = rl(ibl);

cv = cv(ibv);
cr = cr(ibr);
cl = cl(ibl);

%------------------------------------------
%  Resolution filter

if (cfg.mlim == 2)
  ifv = find(par.kr(cv) >= par.kmin & par.kr(cv) <= par.kmax);
  ifr = find(par.kr(cr) >= par.kmin & par.kr(cr) <= par.kmax);
  ifl = find(par.kr(cl) >= par.kmin & par.kr(cl) <= par.kmax);

  rv = rv(ifv);
  rr = rr(ifr);
  rl = rl(ifl);

  cv = cv(ifv);
  cr = cr(ifr);
  cl = cl(ifl);
end

%------------------------------------------
% Sorting maxima
sizemat = [cfg.knum,cfg.vnum];

if ~isempty(rv)
  vind = sub2ind(sizemat,rv,cv);
  [buf,vind] = sort(out.PV(vind),1,'Descend');
  out.rv = rv(vind);
  out.cv = cv(vind);
else
  out.rv = [];
  out.cv = [];
end

if ~isempty(rr)
  rind = sub2ind(sizemat,rr,cr);
  [buf,rind] = sort(out.PR(rind),1,'Descend');
  out.rr = rr(rind);
  out.cr = cr(rind);
else
  out.rr = [];
  out.cr = [];
end

if ~isempty(rl)
  lind = sub2ind(sizemat,rl,cl);
  [buf,lind] = sort(out.PT(lind),1,'Descend');
  out.rl = rl(lind);
  out.cl = cl(lind);
else
  out.rl = [];
  out.cl = [];
end

return;
