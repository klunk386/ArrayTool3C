function read_cfg (fid)

set_global;

%------------------------------------------
% Import configration

while ~feof(fid)

  line = fgetl(fid);
  arg = strread(line,'%s',1);

  switch char(arg)
  %------------------------------------------
  % File selection
  case 'FLST'
    arg = strread(line,'%s',2);
    cfg.file.lst = char(arg(2));
  case 'FOUT'
    arg = strread(line,'%s',2);
    cfg.file.out = char(arg(2));
  %------------------------------------------
  % Frequency section
  case 'FMIN'
    arg = strread(line,'%s',2);
    cfg.fmin = str2num(char(arg(2)));
  case 'FMAX'
    arg = strread(line,'%s',2);
    cfg.fmax = str2num(char(arg(2)));
  case 'FNUM'
    arg = strread(line,'%s',2);
    cfg.fnum = str2num(char(arg(2)));
  case 'FTYP'
    arg = strread(line,'%s',2);
    cfg.ftyp = str2num(char(arg(2)));
  %------------------------------------------
  % Velocity section
  case 'VMIN'
    arg = strread(line,'%s',2);
    cfg.vmin = str2num(char(arg(2)));
  case 'VMAX'
    arg = strread(line,'%s',2);
    cfg.vmax = str2num(char(arg(2)));
  case 'VNUM'
    arg = strread(line,'%s',2);
    cfg.vnum = str2num(char(arg(2)));
  case 'VTYP'
    arg = strread(line,'%s',2);
    cfg.vtyp = str2num(char(arg(2)));
  %------------------------------------------
  % Azimuth section
  case 'KNUM'
    arg = strread(line,'%s',2);
    cfg.knum = str2num(char(arg(2)));
  %------------------------------------------
  % Algorithm section
  case 'CTYP'
    arg = strread(line,'%s',2);
    cfg.ctyp = str2num(char(arg(2)));
  %------------------------------------------
  % Wavelet section
  case 'WTYP'
    arg = strread(line,'%s',2);
    cfg.wtyp = str2num(char(arg(2)));
  case 'WCYC'
    arg = strread(line,'%s',2);
    cfg.wcyc = str2num(char(arg(2)));
  case 'WPER'
    arg = strread(line,'%s',2);
    cfg.wper = str2num(char(arg(2)));
  %------------------------------------------
  % Frequency averaging section
  case 'FAVN'
    arg = strread(line,'%s',2);
    cfg.favn = str2num(char(arg(2)));
  case 'FAVP'
    arg = strread(line,'%s',2);
    cfg.favp = str2num(char(arg(2)));
  %------------------------------------------
  % C-Stacking section
  case 'SNUM'
    arg = strread(line,'%s',2);
    cfg.snum = str2num(char(arg(2)));
  case 'OPER'
    arg = strread(line,'%s',2);
    cfg.oper = str2num(char(arg(2)));
  %------------------------------------------
  % Maxima picking section
  case 'MLIM'
    arg = strread(line,'%s',2);
    cfg.mlim = str2num(char(arg(2)));
  case 'MNUM'
    arg = strread(line,'%s',2);
    cfg.mnum = str2num(char(arg(2)));
  end

end

return;
