function azimuth_filter (inp_file,out_file,az_min,az_max)

%---------------------------------
% I/O files

i1 = fopen(inp_file,'r');

if (i1 == -1)
  disp('Input file not found. Exit...');
  return;
end

o1 = fopen(out_file,'w');

%---------------------------------
% Data loop

while ~feof(i1)

  line = fgetl(i1);

  if line(1) == '#'
    fprintf(o1,'%s\n',line);
  else
    [cm fr vl kt ps el] = strread(line,'%s%f%f%f%f%f');

    if (az_min <= az_max)
      if (kt >= az_min) & (kt <= az_max)
        fprintf(o1,'%s\n',line);
      end
    else
      if (kt >= az_min) | (kt <= az_max)
        fprintf(o1,'%s\n',line);
      end
    end
  end
end

fclose(i1);
fclose(o1);

return;
