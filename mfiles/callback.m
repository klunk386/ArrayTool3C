function callback (callvalue)

set_global;

switch callvalue

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Files (Figure 1)                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 1

  cfg.file.lst = get(han.fig(1).pan(1).edt(1).h,'String');

  %------------------------------------------------------
  % Loading SAC file list
  load_sac_list;

  if (dat.stan == 0)
    return;
  end

  %------------------------------------------------------
  % Import recordings
  import_record;

  %------------------------------------------------------
  % Station location plot
  station_plot;

  %------------------------------------------------------
  % Seismograph plot
  callback(26);
  callback(27);
  callback(28);

  seismo_plot;

case 2

  [file,path] = uigetfile('cfg/*.*','Select the SAC file list:');

  if ~isequal(file,0) & ~isequal(path,0)

    filepath = fullfile(path,file);
    set(han.fig(1).pan(1).edt(1).h,'String',filepath);
    callback(1);

  end

case 3

  chkout = get(han.fig(1).pan(1).edt(2).h,'String');

  if (exist(char(chkout),'file') ~= 0)

    wrnstr = {char(chkout), ...
             'File already exists.     .', ...
             'Do you want to replace it?'};

    qstsel = questdlg(wrnstr,'Yes','No');

    switch qstsel
    case 'No'
      set(han.fig(1).pan(1).edt(2).h,'String',cfg.file.out);

    case 'Cancel'
      set(han.fig(1).pan(1).edt(2).h,'String',cfg.file.out);

    case ''
      set(han.fig(1).pan(1).edt(2).h,'String',cfg.file.out);

    case 'Yes'
      set(han.fig(1).pan(1).edt(2).h,'String',chkout);
    end

  end

case 4

  [file,path] = uiputfile('out/*.m3c','Select the output file (*.m3c):');

  if ~isequal(file,0) & ~isequal(path,0)

    filepath = fullfile(path,file);
    set(han.fig(1).pan(1).edt(2).h,'String',filepath);
    cfg.file.out = filepath;

  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Frequency (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 5

  cfg.fmin = str2num(get(han.fig(1).pan(2).edt(1).h,'String'));

case 6

  cfg.fmax = str2num(get(han.fig(1).pan(2).edt(2).h,'String'));

case 7

  cfg.fnum = str2num(get(han.fig(1).pan(2).edt(3).h,'String'));

case 8

  cfg.ftyp = get(han.fig(1).pan(2).pop(1).h,'Value');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Velocity (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 9

  cfg.vmin = str2num(get(han.fig(1).pan(3).edt(1).h,'String'));

case 10

  cfg.vmax = str2num(get(han.fig(1).pan(3).edt(2).h,'String'));

case 11

  cfg.vnum = str2num(get(han.fig(1).pan(3).edt(3).h,'String'));

case 12

  cfg.vtyp = get(han.fig(1).pan(3).pop(1).h,'Value');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Azimuth (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 13

  cfg.knum = str2num(get(han.fig(1).pan(4).edt(1).h,'String'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Matrix Inversion (Figure 1)                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 14

  cfg.ctyp = get(han.fig(1).pan(5).pop(1).h,'Value');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Windowing (Figure 1)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 15

  cfg.wtyp = get(han.fig(1).pan(6).pop(1).h,'Value');

  switch cfg.wtyp
  case 1
    set(han.fig(1).pan(6).lbl(2).h,'String','Seconds');

  case 2
    set(han.fig(1).pan(6).lbl(2).h,'String','Cycles');
  end

case 16

  cfg.wcyc = str2num(get(han.fig(1).pan(6).edt(1).h,'String'));

case 17

  cfg.wper = str2num(get(han.fig(1).pan(6).edt(2).h,'String'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      Frequency averaging (Figure 1)                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 18

  cfg.favn = str2num(get(han.fig(1).pan(7).edt(1).h,'String'));

case 19

  cfg.favp = str2num(get(han.fig(1).pan(7).edt(2).h,'String'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Stacking (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 20

  cfg.snum = str2num(get(han.fig(1).pan(8).edt(1).h,'String'));

case 21

  cfg.oper = str2num(get(han.fig(1).pan(8).edt(2).h,'String'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Maxima search (Figure 1)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 22

  cfg.mlim = get(han.fig(1).pan(9).pop(1).h,'Value');

case 23

  cfg.mnum = str2num(get(han.fig(1).pan(9).edt(1).h,'String'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         Start Analysis (Figure 1)                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 24

  cfg.file.lst = get(han.fig(1).pan(1).edt(1).h,'String');
  cfg.file.out = get(han.fig(1).pan(1).edt(2).h,'String');

  for nc = 5:23
    callback(nc);
  end

  %------------------------------------------------------
  % Start F-K analysis

  if (par.ok)
    par.stop = 0;
    fk_main_loop;
  end

case 25

  par.stop = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Seismogram (Figure 3)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

case 26

  cfg.plot.c1 = get(han.fig(3).pan(2).rad(1).h,'Value');
  cfg.plot.c2 = get(han.fig(3).pan(2).rad(2).h,'Value');
  cfg.plot.c3 = get(han.fig(3).pan(2).rad(3).h,'Value');

case 27

  cfg.plot.gn = str2num(get(han.fig(3).pan(3).edt(1).h,'String'));

case 28

  t0 = str2num(get(han.fig(3).pan(4).edt(1).h,'String'));
  t1 = str2num(get(han.fig(3).pan(4).edt(2).h,'String'));

  if (par.ok)
    if (t0 < dat.tmin) || (t0 >= dat.tmax)
      t0 = dat.tmin;
      set(han.fig(3).pan(4).edt(1).h,'String',num2str(t0));
    end

    if (t1 <= dat.tmin) || (t1 > dat.tmax) || (t1 <= t0)
      t1 = dat.tmax;
      set(han.fig(3).pan(4).edt(2).h,'String',num2str(t1));
    end

    [v0,i0] = min(abs(dat.time-t0));
    [v1,i1] = min(abs(dat.time-t1));

    dat.ind0 = i0;
    dat.ind1 = i1;
  end

case 29

  if (par.ok)
    seismo_plot;
  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             End of callbacks                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end

return;
