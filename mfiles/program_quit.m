function program_quit ()

set_global;

par.ok = 0;

%------------------------------------------
% Close all windows

close(han.fig(1).h);
close(han.fig(2).h);
close(han.fig(3).h);
close(han.fig(4).h);
close(han.wbr(1).h);

%------------------------------------------
% Clear all variables

clear global han;
clear global cfg;
clear global dat;
clear global par;
clear global out;

return;
