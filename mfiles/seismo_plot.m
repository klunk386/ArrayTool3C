function seismo_plot ()

set_global;

%------------------------------------------------------
% SEISMOGRAM PLOT

i0 = dat.ind0;
i1 = dat.ind1;
gain = cfg.plot.gn;

axes(han.fig(3).pan(1).axs(1).h);
cla; hold('on');

time = zeros(i1-i0+1,1);
trac = zeros(i1-i0+1,1);

max_norm = max(dat.rec(i0:i1,1,1));

for n = 1:dat.stan

  if cfg.plot.c1 == 1
    time = dat.time(i0:i1);
    trac = dat.rec(i0:i1,1,n)./(2*max_norm);
    plot(time,(gain.*trac) + n,'b','Linewidth',1.5);
  end

  if cfg.plot.c2 == 1
    time = dat.time(i0:i1);
    trac = dat.rec(i0:i1,2,n)./(2*max_norm);
    plot(time,(gain.*trac) + n,'r','Linewidth',1.5);
  end

  if cfg.plot.c3 == 1
    time = dat.time(i0:i1);
    trac = dat.rec(i0:i1,3,n)./(2*max_norm);
    plot(time,(gain.*trac) + n,'g','Linewidth',1.5);
  end

end

set(gca,'YTick',[1:dat.stan]);
xlabel('Time');
ylabel('Stations ID');

axis('tight');
set(gca,'Ylim',[0 dat.stan+1]);

hold('off');
grid('on');

drawnow();

return;
