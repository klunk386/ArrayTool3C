function handstruct ()

set_global;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Main Window (Figure 1)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.screen = get(0,'ScreenSize');

han.fig(1).color = [239/255 235/255 231/255];

han.fig(1).x = 300;
han.fig(1).y = 600;
han.fig(1).wid = 400;
han.fig(1).hig = 510;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Files (Figure 1)                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(1).x = 6;
han.fig(1).pan(1).y = han.fig(1).hig - 6 - 70;
han.fig(1).pan(1).wid = 390;
han.fig(1).pan(1).hig = 70;

han.fig(1).pan(1).lbl(1).x = 6;
han.fig(1).pan(1).lbl(1).y = 31;
han.fig(1).pan(1).lbl(1).wid = 80;
han.fig(1).pan(1).lbl(1).hig = 20;

han.fig(1).pan(1).edt(1).x = 91;
han.fig(1).pan(1).edt(1).y = 31;
han.fig(1).pan(1).edt(1).wid = 200;
han.fig(1).pan(1).edt(1).hig = 20;

han.fig(1).pan(1).btn(1).x = 296;
han.fig(1).pan(1).btn(1).y = 31;
han.fig(1).pan(1).btn(1).wid = 80;
han.fig(1).pan(1).btn(1).hig = 20;

han.fig(1).pan(1).lbl(2).x = 6;
han.fig(1).pan(1).lbl(2).y = 6;
han.fig(1).pan(1).lbl(2).wid = 80;
han.fig(1).pan(1).lbl(2).hig = 20;

han.fig(1).pan(1).edt(2).x = 91;
han.fig(1).pan(1).edt(2).y = 6;
han.fig(1).pan(1).edt(2).wid = 200;
han.fig(1).pan(1).edt(2).hig = 20;

han.fig(1).pan(1).btn(2).x = 296;
han.fig(1).pan(1).btn(2).y = 6;
han.fig(1).pan(1).btn(2).wid = 80;
han.fig(1).pan(1).btn(2).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Frequency (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(2).x = 6;
han.fig(1).pan(2).y = han.fig(1).pan(1).y - 6 - 120;
han.fig(1).pan(2).wid = 190;
han.fig(1).pan(2).hig = 120;

han.fig(1).pan(2).lbl(1).x = 6;
han.fig(1).pan(2).lbl(1).y = 81;
han.fig(1).pan(2).lbl(1).wid = 60;
han.fig(1).pan(2).lbl(1).hig = 20;

han.fig(1).pan(2).edt(1).x = 75;
han.fig(1).pan(2).edt(1).y = 81;
han.fig(1).pan(2).edt(1).wid = 100;
han.fig(1).pan(2).edt(1).hig = 20;

han.fig(1).pan(2).lbl(2).x = 6;
han.fig(1).pan(2).lbl(2).y = 56;
han.fig(1).pan(2).lbl(2).wid = 60;
han.fig(1).pan(2).lbl(2).hig = 20;

han.fig(1).pan(2).edt(2).x = 75;
han.fig(1).pan(2).edt(2).y = 56;
han.fig(1).pan(2).edt(2).wid = 100;
han.fig(1).pan(2).edt(2).hig = 20;

han.fig(1).pan(2).lbl(3).x = 6;
han.fig(1).pan(2).lbl(3).y = 31;
han.fig(1).pan(2).lbl(3).wid = 60;
han.fig(1).pan(2).lbl(3).hig = 20;

han.fig(1).pan(2).edt(3).x = 75;
han.fig(1).pan(2).edt(3).y = 31;
han.fig(1).pan(2).edt(3).wid = 100;
han.fig(1).pan(2).edt(3).hig = 20;

han.fig(1).pan(2).lbl(4).x = 6;
han.fig(1).pan(2).lbl(4).y = 6;
han.fig(1).pan(2).lbl(4).wid = 60;
han.fig(1).pan(2).lbl(4).hig = 20;

han.fig(1).pan(2).pop(1).x = 75;
han.fig(1).pan(2).pop(1).y = 6;
han.fig(1).pan(2).pop(1).wid = 100;
han.fig(1).pan(2).pop(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Velocity (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(3).x = han.fig(1).pan(2).wid + 16;
han.fig(1).pan(3).y = han.fig(1).pan(1).y - 6 - 120;
han.fig(1).pan(3).wid = 190;
han.fig(1).pan(3).hig = 120;

han.fig(1).pan(3).lbl(1).x = 6;
han.fig(1).pan(3).lbl(1).y = 81;
han.fig(1).pan(3).lbl(1).wid = 60;
han.fig(1).pan(3).lbl(1).hig = 20;

han.fig(1).pan(3).edt(1).x = 75;
han.fig(1).pan(3).edt(1).y = 81;
han.fig(1).pan(3).edt(1).wid = 100;
han.fig(1).pan(3).edt(1).hig = 20;

han.fig(1).pan(3).lbl(2).x = 6;
han.fig(1).pan(3).lbl(2).y = 56;
han.fig(1).pan(3).lbl(2).wid = 60;
han.fig(1).pan(3).lbl(2).hig = 20;

han.fig(1).pan(3).edt(2).x = 75;
han.fig(1).pan(3).edt(2).y = 56;
han.fig(1).pan(3).edt(2).wid = 100;
han.fig(1).pan(3).edt(2).hig = 20;

han.fig(1).pan(3).lbl(3).x = 6;
han.fig(1).pan(3).lbl(3).y = 31;
han.fig(1).pan(3).lbl(3).wid = 60;
han.fig(1).pan(3).lbl(3).hig = 20;

han.fig(1).pan(3).edt(3).x = 75;
han.fig(1).pan(3).edt(3).y = 31;
han.fig(1).pan(3).edt(3).wid = 100;
han.fig(1).pan(3).edt(3).hig = 20;

han.fig(1).pan(3).lbl(4).x = 6;
han.fig(1).pan(3).lbl(4).y = 6;
han.fig(1).pan(3).lbl(4).wid = 60;
han.fig(1).pan(3).lbl(4).hig = 20;

han.fig(1).pan(3).pop(1).x = 75;
han.fig(1).pan(3).pop(1).y = 6;
han.fig(1).pan(3).pop(1).wid = 100;
han.fig(1).pan(3).pop(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Azimuth (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(4).x = 6;
han.fig(1).pan(4).y = han.fig(1).pan(2).y - 6 - 45;
han.fig(1).pan(4).wid = 190;
han.fig(1).pan(4).hig = 45;

han.fig(1).pan(4).lbl(1).x = 6;
han.fig(1).pan(4).lbl(1).y = 6;
han.fig(1).pan(4).lbl(1).wid = 60;
han.fig(1).pan(4).lbl(1).hig = 20;

han.fig(1).pan(4).edt(1).x = 75;
han.fig(1).pan(4).edt(1).y = 6;
han.fig(1).pan(4).edt(1).wid = 100;
han.fig(1).pan(4).edt(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Matrix Inversion (Figure 1)                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(5).x = 6;
han.fig(1).pan(5).y = han.fig(1).pan(4).y - 6 - 45;
han.fig(1).pan(5).wid = 190;
han.fig(1).pan(5).hig = 45;

han.fig(1).pan(5).lbl(1).x = 6;
han.fig(1).pan(5).lbl(1).y = 6;
han.fig(1).pan(5).lbl(1).wid = 60;
han.fig(1).pan(5).lbl(1).hig = 20;

han.fig(1).pan(5).pop(1).x = 75;
han.fig(1).pan(5).pop(1).y = 6;
han.fig(1).pan(5).pop(1).wid = 100;
han.fig(1).pan(5).pop(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Windowing (Figure 1)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(6).x = han.fig(1).pan(2).wid + 16;
han.fig(1).pan(6).y = han.fig(1).pan(4).y - 6 - 45;
han.fig(1).pan(6).wid = 190;
han.fig(1).pan(6).hig = 95;

han.fig(1).pan(6).lbl(1).x = 6;
han.fig(1).pan(6).lbl(1).y = 56;
han.fig(1).pan(6).lbl(1).wid = 60;
han.fig(1).pan(6).lbl(1).hig = 20;

han.fig(1).pan(6).pop(1).x = 75;
han.fig(1).pan(6).pop(1).y = 56;
han.fig(1).pan(6).pop(1).wid = 100;
han.fig(1).pan(6).pop(1).hig = 20;

han.fig(1).pan(6).lbl(2).x = 6;
han.fig(1).pan(6).lbl(2).y = 31;
han.fig(1).pan(6).lbl(2).wid = 60;
han.fig(1).pan(6).lbl(2).hig = 20;

han.fig(1).pan(6).edt(1).x = 75;
han.fig(1).pan(6).edt(1).y = 31;
han.fig(1).pan(6).edt(1).wid = 100;
han.fig(1).pan(6).edt(1).hig = 20;

han.fig(1).pan(6).lbl(3).x = 6;
han.fig(1).pan(6).lbl(3).y = 6;
han.fig(1).pan(6).lbl(3).wid = 60;
han.fig(1).pan(6).lbl(3).hig = 20;

han.fig(1).pan(6).edt(2).x = 75;
han.fig(1).pan(6).edt(2).y = 6;
han.fig(1).pan(6).edt(2).wid = 100;
han.fig(1).pan(6).edt(2).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      Frequency averaging (Figure 1)                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(7).x = 6;
han.fig(1).pan(7).y = han.fig(1).pan(6).y - 6 - 45;
han.fig(1).pan(7).wid = 390;
han.fig(1).pan(7).hig = 45;

han.fig(1).pan(7).lbl(1).x = 6;
han.fig(1).pan(7).lbl(1).y = 6;
han.fig(1).pan(7).lbl(1).wid = 60;
han.fig(1).pan(7).lbl(1).hig = 20;

han.fig(1).pan(7).edt(1).x = 75;
han.fig(1).pan(7).edt(1).y = 6;
han.fig(1).pan(7).edt(1).wid = 100;
han.fig(1).pan(7).edt(1).hig = 20;

han.fig(1).pan(7).lbl(2).x = 206;
han.fig(1).pan(7).lbl(2).y = 6;
han.fig(1).pan(7).lbl(2).wid = 60;
han.fig(1).pan(7).lbl(2).hig = 20;

han.fig(1).pan(7).edt(2).x = 275;
han.fig(1).pan(7).edt(2).y = 6;
han.fig(1).pan(7).edt(2).wid = 100;
han.fig(1).pan(7).edt(2).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Stacking (Figure 1)                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(8).x = 6;
han.fig(1).pan(8).y = han.fig(1).pan(7).y - 6 - 45;
han.fig(1).pan(8).wid = 390;
han.fig(1).pan(8).hig = 45;

han.fig(1).pan(8).lbl(1).x = 6;
han.fig(1).pan(8).lbl(1).y = 6;
han.fig(1).pan(8).lbl(1).wid = 60;
han.fig(1).pan(8).lbl(1).hig = 20;

han.fig(1).pan(8).edt(1).x = 75;
han.fig(1).pan(8).edt(1).y = 6;
han.fig(1).pan(8).edt(1).wid = 100;
han.fig(1).pan(8).edt(1).hig = 20;

han.fig(1).pan(8).lbl(2).x = 206;
han.fig(1).pan(8).lbl(2).y = 6;
han.fig(1).pan(8).lbl(2).wid = 60;
han.fig(1).pan(8).lbl(2).hig = 20;

han.fig(1).pan(8).edt(2).x = 275;
han.fig(1).pan(8).edt(2).y = 6;
han.fig(1).pan(8).edt(2).wid = 100;
han.fig(1).pan(8).edt(2).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Maxima search (Figure 1)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).pan(9).x = 6;
han.fig(1).pan(9).y = han.fig(1).pan(8).y - 6 - 45;
han.fig(1).pan(9).wid = 390;
han.fig(1).pan(9).hig = 45;

han.fig(1).pan(9).lbl(1).x = 6;
han.fig(1).pan(9).lbl(1).y = 6;
han.fig(1).pan(9).lbl(1).wid = 60;
han.fig(1).pan(9).lbl(1).hig = 20;

han.fig(1).pan(9).pop(1).x = 75;
han.fig(1).pan(9).pop(1).y = 6;
han.fig(1).pan(9).pop(1).wid = 100;
han.fig(1).pan(9).pop(1).hig = 20;

han.fig(1).pan(9).lbl(2).x = 206;
han.fig(1).pan(9).lbl(2).y = 6;
han.fig(1).pan(9).lbl(2).wid = 60;
han.fig(1).pan(9).lbl(2).hig = 20;

han.fig(1).pan(9).edt(1).x = 275;
han.fig(1).pan(9).edt(1).y = 6;
han.fig(1).pan(9).edt(1).wid = 100;
han.fig(1).pan(9).edt(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Buttons (Figure 1)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(1).btn(1).x = 6;
han.fig(1).btn(1).y = 6;
han.fig(1).btn(1).wid = 130;
han.fig(1).btn(1).hig = 40;

han.fig(1).btn(2).x = 136;
han.fig(1).btn(2).y = 6;
han.fig(1).btn(2).wid = 130;
han.fig(1).btn(2).hig = 40;

han.fig(1).btn(3).x = 266;
han.fig(1).btn(3).y = 6;
han.fig(1).btn(3).wid = 130;
han.fig(1).btn(3).hig = 40;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Station Plot (Figure 2)                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(2).x = 300;
han.fig(2).y = han.fig(1).y - 430;
han.fig(2).wid = 400;
han.fig(2).hig = 380;

han.fig(2).pan(1).x = 6;
han.fig(2).pan(1).y = 6;
han.fig(2).pan(1).wid = 390;
han.fig(2).pan(1).hig = 370;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Seismogram (Figure 3)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(3).x = 300 + han.fig(2).wid + 30;
han.fig(3).y = han.fig(1).y - 90;
han.fig(3).wid = 795;
han.fig(3).hig = 600;

han.fig(3).pan(1).x = 6;
han.fig(3).pan(1).y = 60;
han.fig(3).pan(1).wid = 785;
han.fig(3).pan(1).hig = 530;

han.fig(3).pan(1).axs(1).x = 51;
han.fig(3).pan(1).axs(1).y = 51;
han.fig(3).pan(1).axs(1).wid = 710;
han.fig(3).pan(1).axs(1).hig = 440;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Channels (Figure 3)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(3).pan(2).x = 6;
han.fig(3).pan(2).y = 6;
han.fig(3).pan(2).wid = 200;
han.fig(3).pan(2).hig = 45;

han.fig(3).pan(2).rad(1).x = 11;
han.fig(3).pan(2).rad(1).y = 6;
han.fig(3).pan(2).rad(1).wid = 60;
han.fig(3).pan(2).rad(1).hig = 20;

han.fig(3).pan(2).rad(2).x = 71;
han.fig(3).pan(2).rad(2).y = 6;
han.fig(3).pan(2).rad(2).wid = 60;
han.fig(3).pan(2).rad(2).hig = 20;

han.fig(3).pan(2).rad(3).x = 131;
han.fig(3).pan(2).rad(3).y = 6;
han.fig(3).pan(2).rad(3).wid = 60;
han.fig(3).pan(2).rad(3).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Gain (Figure 3)                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(3).pan(3).x = 212;
han.fig(3).pan(3).y = 6;
han.fig(3).pan(3).wid = 127;
han.fig(3).pan(3).hig = 45;

han.fig(3).pan(3).edt(1).x = 11;
han.fig(3).pan(3).edt(1).y = 6;
han.fig(3).pan(3).edt(1).wid = 100;
han.fig(3).pan(3).edt(1).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         Time Settings (Figure 3)                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(3).pan(4).x = 345;
han.fig(3).pan(4).y = 6;
han.fig(3).pan(4).wid = 320;
han.fig(3).pan(4).hig = 45;

han.fig(3).pan(4).lbl(1).x = 11;
han.fig(3).pan(4).lbl(1).y = 6;
han.fig(3).pan(4).lbl(1).wid = 40;
han.fig(3).pan(4).lbl(1).hig = 20;

han.fig(3).pan(4).edt(1).x = 51;
han.fig(3).pan(4).edt(1).y = 6;
han.fig(3).pan(4).edt(1).wid = 100;
han.fig(3).pan(4).edt(1).hig = 20;

han.fig(3).pan(4).lbl(2).x = 161;
han.fig(3).pan(4).lbl(2).y = 6;
han.fig(3).pan(4).lbl(2).wid = 40;
han.fig(3).pan(4).lbl(2).hig = 20;

han.fig(3).pan(4).edt(2).x = 201;
han.fig(3).pan(4).edt(2).y = 6;
han.fig(3).pan(4).edt(2).wid = 100;
han.fig(3).pan(4).edt(2).hig = 20;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Redraw button (Figure 3)                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(3).btn(1).x = 671;
han.fig(3).btn(1).y = 6;
han.fig(3).btn(1).wid = 120;
han.fig(3).btn(1).hig = 40;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Kx-Ky Plot (Figure 4)                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.fig(4).x = 300 + han.fig(2).wid + 30;
han.fig(4).y = han.fig(1).y - 400;
han.fig(4).wid = 795;
han.fig(4).hig = 250;

han.fig(4).pan(1).x = 6;
han.fig(4).pan(1).y = 6;
han.fig(4).pan(1).wid = 257;
han.fig(4).pan(1).hig = 240;

han.fig(4).pan(2).x = 269;
han.fig(4).pan(2).y = 6;
han.fig(4).pan(2).wid = 257;
han.fig(4).pan(2).hig = 240;

han.fig(4).pan(3).x = 532;
han.fig(4).pan(3).y = 6;
han.fig(4).pan(3).wid = 257;
han.fig(4).pan(3).hig = 240;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 Waitbar                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

han.wbr(1).x = 940;
han.wbr(1).y = 70;
han.wbr(1).wid = 360;
han.wbr(1).hig = 80;

return;
