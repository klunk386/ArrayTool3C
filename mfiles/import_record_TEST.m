function import_record ();

set_global;

%-----------------------------
% Cooredinates

% x = [1:10:100];
% y = [1:10:100];

[x,y] = meshgrid(0:5:20,0:5:20);

x = reshape(x,1,numel(x));
y = reshape(y,1,numel(y));

snum = length(x);

%-----------------------------
% Time

tmin = 0;
tmax = 10;
dt = 0.001;

t = [0:dt:tmax];
tnum = length(t);

%-----------------------------
% Frequency

f = 2;
om = 2*pi*f;

%-----------------------------
% Incidence angle

an = deg2rad(120);

%-----------------------------
% Velocity

V = 60;

%-----------------------------
% Signal

Ax = zeros(tnum,snum);
Ay = zeros(tnum,snum);
Az = zeros(tnum,snum);

for nc = 1:snum

  S = 10*cos(om*(t+(x(nc)*cos(an)+y(nc)*sin(an))./V));

  noise = randn(size(S))*10;

  if (0)
    % Rayleigh
    Ax(:,nc) = S*cos(an)+noise;
    Ay(:,nc) = S*sin(an)+noise;
    Az(:,nc) = S+noise;
  else
    % Love
    Ax(:,nc) = S*cos(an+pi/2)+noise;
    Ay(:,nc) = S*sin(an+pi/2)+noise;
    Az(:,nc) = S+noise;
  end

  % figure(1); hold on;
  % plot(t,nc + Ay(:,nc)/2);

end

%-----------------------------------------------------
% IMPORTING RECORDINGS

dat.stan = snum;

for ns = 1:dat.stan

  dat.rec(:,1,ns) = Az(:,ns);
  dat.rec(:,2,ns) = Ay(:,ns);
  dat.rec(:,3,ns) = Ax(:,ns);

  if (ns == 1)
    dat.time = t;
    dat.dt = dt;

    dat.tmin = tmin;
    dat.tmax = tmax;
    dat.tnum = tnum;
  end

  dat.cx(ns,1) = x(ns);
  dat.cy(ns,1) = y(ns);

end

if par.gui
  set(han.fig(3).pan(4).edt(1).h,'String',num2str(dat.tmin));
  set(han.fig(3).pan(4).edt(2).h,'String',num2str(dat.tmax));
end

% Internal check
par.ok = 1;

return;
