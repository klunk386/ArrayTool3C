function kxky_plot (nf)

set_global;

%------------------------------------------
% Polar plot conversion

kr = par.kr;
kt_R = par.ktet;
kt_L = par.ktet-pi/2;

% Cartesian coordinate conversion:
% Rayleigh
[r th] = meshgrid(kr,kt_R);
[x_R y_R] = pol2cart(th,r);

% Love
[r th] = meshgrid(kr,kt_L);
[x_L y_L] = pol2cart(th,r);

% Picked maxima
n0 = [1:min(numel(out.rv),cfg.mnum)];
[M(1).x M(1).y] = pol2cart(kt_R(out.rv(n0)),kr(out.cv(n0)));

n1 = [1:min(numel(out.rr),cfg.mnum)];
[M(2).x M(2).y] = pol2cart(kt_R(out.rr(n1)),kr(out.cr(n1)));

n2 = [1:min(numel(out.rl),cfg.mnum)];
[M(3).x M(3).y] = pol2cart(kt_L(out.rl(n2)),kr(out.cl(n2)));

%------------------------------------------
% Kx-Ky plot

P(1).ps = out.PV;
P(2).ps = out.PR;
P(3).ps = out.PT;

m(1) = max(max(P(1).ps));
m(2) = max(max(P(2).ps));
m(3) = max(max(P(3).ps));

% Absolute maximum (Optional)
% m_tot = max([m(1) m(2) m(3)]);

for np = 1:3

  axes(han.fig(4).pan(np).axs(1).h);

  if (np ~= 3)
    % Rayleigh
    pcolor(x_R,y_R,P(np).ps); hold on;
  else
    % Love
    pcolor(x_L,y_L,P(np).ps); hold on;
  end

  plot(M(np).x,M(np).y,'k+');

  % set(gca,'Clim',[0 m_tot]);
    set(gca,'Clim',[0 m(np)]);

  if (cfg.mlim == 2)
    kr_lim_plot(par.kmin);
    kr_lim_plot(par.kmax);
  end

  hold off;

  mycolormap;
  colormap(marc);

  xlabel('Kx (1/m)');
  ylabel('Ky (1/m)');

  shading interp;
  view([0 0 1]);
  axis tight;
  grid off;
  box on;

  drawnow();

end

return;

%------------------------------------------
% Resolution bounds plot

function kr_lim_plot (kr)

th = linspace(0,2*pi,360);
kr = ones(1,360)*kr;

[x y] = pol2cart(th,kr);

plot(x,y,'k');

return;
