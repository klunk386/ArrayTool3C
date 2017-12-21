function station_plot ()

set_global;

%------------------------------------------------------
% STATION LOCATION PLOT

axes(han.fig(2).pan(1).axs(1).h);

plot(dat.cx(:,1),dat.cy(:,1),'o', ...
     'Linewidth',2, ...
     'MarkerEdgeColor',[1 0 0], ...
     'MarkerFaceColor','y', ...
     'MarkerSize',10);

minX = min(dat.cx(:,1));
maxX = max(dat.cx(:,1));
minY = min(dat.cy(:,1));
maxY = max(dat.cy(:,1));

dx = (maxX-minX)*0.2;
dy = (maxY-minY)*0.2;

tx = dx/5;
ty = dy/5;

for n = 1:dat.stan
  text(dat.cx(n,1)+tx,dat.cy(n,1)+ty,num2str(n));
end

axis([minX-dx maxX+dx minY-dy maxY+dy]);

xlabel('X (m)');
ylabel('Y (m)');

grid on;

drawnow();

return;
