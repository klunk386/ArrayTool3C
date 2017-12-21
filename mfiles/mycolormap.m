%------------------------------------
% GRAY-SACLE COLORMAP

gr = transpose(linspace(1,0.5,64));
mygr = [gr gr gr];

%------------------------------------
% PERSONALIZED COLORMAPS

zu = transpose(linspace(0,1,16));
uz = transpose(linspace(1,0,16));
zz = zeros(16,1);
uu = ones(16,1);

mycm(:,1) = [uz;zz;zu;uu];
mycm(:,2) = [uz;zu;uu;uz];
mycm(:,3) = [uu;uu;uz;zz];

marc(:,1) = [uu;uu;uz;zz];
marc(:,2) = [uz;zu;uu;uz];
marc(:,3) = [uz;zz;zz;zu];
