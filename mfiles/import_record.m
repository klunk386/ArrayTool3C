function import_record ();

set_global;

%-----------------------------------------------------
% IMPORTING RECORDINGS

for ns = 1:dat.stan

  buf01 = rsac(char(dat.lst(ns,1)));
  buf02 = rsac(char(dat.lst(ns,2)));
  buf03 = rsac(char(dat.lst(ns,3)));

  dat.rec(:,1,ns) = buf01(:,2);
  dat.rec(:,2,ns) = buf02(:,2);
  dat.rec(:,3,ns) = buf03(:,2);

  if (ns == 1)
    dat.time = buf01(:,1);
    dat.dt = lh(buf01,'DELTA');

    dat.tmin = round(dat.time(1,1));
    dat.tmax = round(dat.time(end,1));
    dat.tnum = length(dat.time);
  end

  dat.cx(ns,1) = lh(buf01,'USER7');   % For compatibility with Daniel's data
  dat.cy(ns,1) = lh(buf01,'USER8');   % when using Swiss Coordinates

  % dat.cx(ns,1) = lh(buf01,'STLO');
  % dat.cy(ns,1) = lh(buf01,'STLA');

  clear buf01;
  clear buf02;
  clear buf03;

end

if par.gui
  set(han.fig(3).pan(4).edt(1).h,'String',num2str(dat.tmin));
  set(han.fig(3).pan(4).edt(2).h,'String',num2str(dat.tmax));
end

% Internal check
par.ok = 1;

return;
