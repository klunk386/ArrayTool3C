function output_init ()

set_global;

%------------------------------------------
% Output intialization

% Delete existing file
if exist(char(cfg.file.out))
  delete(char(cfg.file.out));
end

% Open output files
f01 = fopen(char(cfg.file.out),'w');

fprintf(f01,'#---------------------------------\n');
fprintf(f01,'# ARRAY TOOL 3C - OUTPUT FILE\n');
fprintf(f01,'#---------------------------------\n');
fprintf(f01,'# FMIN %.2f\n',cfg.fmin);
fprintf(f01,'# FMAX %.2f\n',cfg.fmax);
fprintf(f01,'# FNUM %d\n',cfg.fnum);
fprintf(f01,'# FTYP %d\n',cfg.ftyp);
fprintf(f01,'# VMIN %.2f\n',cfg.vmin);
fprintf(f01,'# VMAX %.2f\n',cfg.vmax);
fprintf(f01,'# VNUM %d\n',cfg.vnum);
fprintf(f01,'# VTYP %d\n',cfg.vtyp);
fprintf(f01,'# KNUM %d\n',cfg.knum-2);
fprintf(f01,'# CTYP %d\n',cfg.ctyp);
fprintf(f01,'# WTYP %d\n',cfg.wtyp);
fprintf(f01,'# WCYC %.2f\n',cfg.wcyc);
fprintf(f01,'# WPER %.2f\n',cfg.wper);
fprintf(f01,'# FAVN %d\n',cfg.favn);
fprintf(f01,'# FAVP %.2f\n',cfg.favp);
fprintf(f01,'# SNUM %d\n',cfg.snum);
fprintf(f01,'# OPER %.2f\n',cfg.oper);
fprintf(f01,'# MLIM %d\n',cfg.mlim);
fprintf(f01,'# MNUM %d\n',cfg.mnum);
fprintf(f01,'#---------------------------------\n');

% Close output files
fclose(f01);

return;
