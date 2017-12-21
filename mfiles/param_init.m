function param_init ()

set_global;

%------------------------------------------
% Generate intial parametrization

%------------------------------------------
% Frequency axes

switch cfg.ftyp
case 1
  par.fr = linspace(cfg.fmin,cfg.fmax,cfg.fnum);
case 2
  par.fr = logspace(log10(cfg.fmin),log10(cfg.fmax),cfg.fnum);
end

%------------------------------------------
% Velocity axes

switch cfg.vtyp
case 1
  par.vl = linspace(cfg.vmin,cfg.vmax,cfg.vnum);
case 2
  par.vl = logspace(log10(cfg.vmin),log10(cfg.vmax),cfg.vnum);
end

%------------------------------------------
% Azimuth

dk = 2*pi/cfg.knum;
par.ktet = linspace(0,dk*(cfg.knum-1),cfg.knum);

% Account for border effects of picking (TO CHECK!)
cfg.knum = cfg.knum + 2;
par.ktet = [-dk par.ktet 2*pi];

par.csk = cos(par.ktet);
par.snk = sin(par.ktet);

%------------------------------------------
% Frequency averaging

switch cfg.ftyp
case 1
  dfr = (cfg.fmax-cfg.fmin)/(cfg.fnum-1);
case 2
  dfr = (log10(cfg.fmax)-log10(cfg.fmin))/(cfg.fnum-1);
end

if (cfg.favn == 1)
  par.df = 0;
else
  dfr = dfr*cfg.favp;
  par.df = linspace(-dfr/2,dfr/2,cfg.favn);
end

return;
