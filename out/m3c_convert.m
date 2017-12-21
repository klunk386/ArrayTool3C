function m3c_convert (inp_file,out_dir)

%---------------------------------
% I/O files

i1 = fopen(inp_file,'r');

if (i1 == -1)
  disp('Input file not found. Exit...');
  return;
end

if ~exist(out_dir,'dir')
  mkdir(out_dir);
end

o1 = fopen([out_dir '/dis_v.max'],'w');
fprintf(o1,'# seconds from start | cfreq | slow | az | math-phi | semblance | beampow\n');

o2 = fopen([out_dir '/dis_r.max'],'w');
fprintf(o2,'# seconds from start | cfreq | slow | az | math-phi | semblance | beampow\n');

o3 = fopen([out_dir '/dis_t.max'],'w');
fprintf(o3,'# seconds from start | cfreq | slow | az | math-phi | semblance | beampow\n');

o4 = fopen([out_dir '/ell_v.max'],'w');
fprintf(o4,'# seconds from start | cfreq | H/V | AmpZ | AmpH | Delay\n');

o5 = fopen([out_dir '/ell_r.max'],'w');
fprintf(o5,'# seconds from start | cfreq | H/V | AmpZ | AmpH | Delay\n');

%---------------------------------
% Data loop

while ~feof(i1)

  line = fgetl(i1);

  switch line(1)
  case 'v'
    [cm fr vl kt ps el] = strread(line,'%s%f%f%f%f%f');
    fprintf(o1,'0 %.6f %.6f %.6f 1 1 1\n',fr,1000/vl,deg2rad(kt));
    fprintf(o4,'0 %.6f %.6f 1 1 1\n',fr,el);
  case 'r'
    [cm fr vl kt ps el] = strread(line,'%s%f%f%f%f%f');
    fprintf(o2,'0 %.6f %.6f %.6f 1 1 1\n',fr,1000/vl,deg2rad(kt));
    fprintf(o5,'0 %.6f %.6f 1 1 1\n',fr,el);
  case 't'
    [cm fr vl kt ps el] = strread(line,'%s%f%f%f%f%f');
    fprintf(o3,'0 %.6f %.6f %.6f 1 1 1\n',fr,1000/vl,deg2rad(kt));
  end
end

fclose(i1);
fclose(o1);
fclose(o2);
fclose(o3);

return;

%---------------------------------

function rad = deg2rad(deg)

rad = (pi/180) * deg;

return;
