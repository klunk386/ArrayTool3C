function [t0 t1 ind] = get_time_bnd (nt)

set_global;

%------------------------------------------
% Window time bounds

t0 = ((nt-1)*par.wtot)+1;
t1 = t0-1+par.wtot;

%------------------------------------------
% Window midpoint index search

% Overlapping region
olap = fix(par.wlen*cfg.oper/100);

% Point interdistance
dt = (par.wtot-olap)/(cfg.snum);

% Point indexing
ind = fix(1+[0:cfg.snum-1]*dt);

%------------------------------------------
% Plot window box

if par.gui
  axes(han.fig(3).pan(1).axs(1).h);
  hold on;

  if isfield(cfg.plot,'wh')
    delete(cfg.plot.wh);
  end

  X1 = dat.time(1)+[t0 t0]*dat.dt;
  X2 = dat.time(1)+[t1 t1]*dat.dt;
  X3 = dat.time(1)+[t0 t1]*dat.dt;
  X4 = dat.time(1)+[t0 t1]*dat.dt;

  Y1 = [0.5 dat.stan+0.5];
  Y2 = [dat.stan+0.5 0.5];
  Y3 = [dat.stan+0.5 dat.stan+0.5];
  Y4 = [0.5 0.5];

  cfg.plot.wh(1) = plot(X1,Y1,'r','Linewidth',2);
  cfg.plot.wh(2) = plot(X2,Y2,'r','Linewidth',2);
  cfg.plot.wh(3) = plot(X3,Y3,'r','Linewidth',2);
  cfg.plot.wh(4) = plot(X4,Y4,'r','Linewidth',2);

  cfg.plot.wh(5) = fill([X1 X2],[Y1 Y2],'y','FaceAlpha',0.5);

  % Return visibility to progress bar
  figure(han.wbr(1).h);
  drawnow;

end

return;
