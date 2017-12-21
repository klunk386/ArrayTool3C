function dat = load_sac_list ()

set_global;

%-----------------------------------------------------
% LOADING SAC FILE LIST

dat.stan = 0;

f01 = fopen(char(cfg.file.lst),'r');

if (f01 == -1)
    disp('Error: cannot open SAC file list.');
    return;
end

if par.gui
  axes(han.fig(3).pan(1).axs(1).h);
  cla; axis([0 1000 0 11]);
  text(400,5.3,'Loading Data...','FontSize',18,'FontWeight','Bold');
end

while ~feof(f01)

  line = fgetl(f01);
  arg = strread(line,'%s',1);

  switch char(arg)

  %---------------------------------
  % ROOT directory

  case 'ROOT'
    arg = strread(line,'%s',2);
    root = char(arg(2));

  %---------------------------------
  % SAC files

  case 'SACF'
    dat.stan = dat.stan + 1;
    arg = strread(line,'%s',4);

    dat.lst(dat.stan,1) = cellstr([root char(arg(2))]);
    dat.lst(dat.stan,2) = cellstr([root char(arg(3))]);
    dat.lst(dat.stan,3) = cellstr([root char(arg(4))]);

  end
end

fclose(f01);

return;
