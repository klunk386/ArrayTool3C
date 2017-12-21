function datastruct ()

set_global;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Defaults                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cfg.file.lst = {'cfg/sac.list'};
cfg.file.out = {'out/out.m3c'};

cfg.fmin = 1;
cfg.fmax = 10;
cfg.fnum = 100;
cfg.ftyp = 2;

cfg.vmin = 100;
cfg.vmax = 1500;
cfg.vnum = 100;
cfg.vtyp = 2;

cfg.knum = 180;

cfg.ctyp = 3;

cfg.wtyp = 1;
cfg.wcyc = 10;
cfg.wper = 0.1;

cfg.favn = 10;
cfg.favp = 1;

cfg.snum = 10;
cfg.oper = 10;

cfg.mlim = 1;
cfg.mnum = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Internals                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

par.ok = 0;

return;

