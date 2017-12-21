function wpar_init (nf)

set_global;

%------------------------------------------
% Single window

switch cfg.wtyp
case 1
  par.wlen = fix(cfg.wcyc/dat.dt);
case 2
  par.wlen = fix(cfg.wcyc/(par.fr(nf)*dat.dt));
end

%------------------------------------------
% Tapering (Normalized Tukey window)

par.hw = tukeywin(par.wlen,cfg.wper);
par.hw = par.hw./sqrt(sum(par.hw.^2)/par.wlen);

%------------------------------------------
% Window stacking parameters

% Suggested value...
% cfg.oper = cfg.wper/2*100;

olap = par.wlen*cfg.oper/100;

par.wtot = fix((par.wlen-olap)*cfg.snum + olap);
par.wnum = fix(dat.tnum/par.wtot);

%------------------------------------------
% Wavenumber axes

par.kr = 2*pi*par.fr(nf)./par.vl;

%------------------------------------------
% Processing Status Information

fprintf('--------------------------------------\n');
fprintf('Processing frequency: %.2fHz ...\n',par.fr(nf));
fprintf('    Single window duration: %.2fs\n',par.wlen*dat.dt);
fprintf('    Block window duration: %.2fs\n',par.wtot*dat.dt);
fprintf('    Block window number: %.0f\n',par.wnum);

% Status bar
if par.gui
  prcbar = (nf-1)/cfg.fnum;
  prcmsg = {sprintf('Progress: %.1f%% ...',prcbar*100) ...
            sprintf('Frequency: %.2fHz ...',par.fr(nf))};

  set(han.wbr(1).h,'Visible','on');
  waitbar(prcbar,han.wbr(1).h,prcmsg);
  drawnow();
end

return;
