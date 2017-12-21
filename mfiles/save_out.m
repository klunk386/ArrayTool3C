function save_out (nf)

set_global;

%------------------------------------------
% Save output

% Open output files
f01 = fopen(char(cfg.file.out),'a');

% Vertical
for ni = 1:min(numel(out.rv),cfg.mnum)

  fprintf(f01,'v %.4f %.4f %.4f %.4e %.4f\n',...
          par.fr(nf),...
          par.vl(out.cv(ni)),...
          rad2deg(par.ktet(out.rv(ni))),...
          out.PV(out.rv(ni),out.cv(ni)),...
          sqrt(out.PR(out.rv(ni),out.cv(ni))/...
               out.PV(out.rv(ni),out.cv(ni))));

end

% Radial
for ni = 1:min(numel(out.rr),cfg.mnum)

  fprintf(f01,'r %.4f %.4f %.4f %.4e %.4f\n',...
          par.fr(nf),...
          par.vl(out.cr(ni)),...
          rad2deg(par.ktet(out.rr(ni))),...
          out.PR(out.rr(ni),out.cr(ni)),...
          sqrt(out.PR(out.rr(ni),out.cr(ni))/...
               out.PV(out.rr(ni),out.cr(ni))));

end

% Trasversal
for ni = 1:min(numel(out.rl),cfg.mnum)

  % Adjusting azimuth
  ktet = par.ktet(out.rl(ni));

  if (ktet < pi/2)
    ktet_transv = ktet+3*pi/2;
  else
    ktet_transv = ktet-pi/2;
  end

  fprintf(f01,'t %.4f %.4f %.4f %.4e %.4f\n',...
          par.fr(nf),...
          par.vl(out.cl(ni)),...
          rad2deg(ktet_transv),...
          out.PT(out.rl(ni),out.cl(ni)),...
          -1);

end

% Close output files
fclose(f01);

return;
