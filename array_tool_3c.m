function array_tool_3c (varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%  ARRAY TOOL 3C                                                          %
%  Three-components High-Resolution FK Analysis (Version 2.0)             %
%                                                                         %
%  Copyright (C) 2011 Poggi Valerio <poggi@sed.ethz.ch>                   %
%                                                                         %
%  This program is free software: you can redistribute it and/or modify   %
%  it under the terms of the GNU General Public License as published by   %
%  the Free Software Foundation, either version 3 of the License, or      %
%  (at your option) any later version.                                    %
%                                                                         %
%  This program is distributed in the hope that it will be useful,        %
%  but WITHOUT ANY WARRANTY; without even the implied warranty of         %
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          %
%  GNU General Public License for more details.                           %
%                                                                         %
%  You should have received a copy of the GNU General Public License      %
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.  %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------------
% Initialization

clear global han;
clear global cfg;
clear global dat;
clear global par;
clear global out;

addpath('mfiles');
set_global;

if (nargin > 0)

  %------------------------------------------------------
  % Initialize batch mode

  par.gui = 0;
  par.stop = 0;

  %------------------------------------------------------
  % Importing configuration
  f01 = fopen(varargin{1},'r');
  if (f01 ~= -1)
    read_cfg(f01);
    fclose(f01);
  else
    disp('Error: cannot open configuration file.');
    disp('Exit program...');
    return;
  end

  %------------------------------------------------------
  % Loading SAC file list
  load_sac_list;

  %------------------------------------------------------
  % Import recordings
  import_record;

  %------------------------------------------------------
  % Start F-K analysis
  fk_main_loop;

else

  %------------------------------------------------------
  % Initialize GUI interface

  close all hidden;

  par.gui = 1;

  datastruct;
  handstruct;
  interface;

end

return;
