function fk_main_loop()

set_global;

%------------------------------------------
% Generate intial parametrization
param_init;

%------------------------------------------
% Initialize output
output_init;

%------------------------------------------
% Compute resolution limits
res_bnd;

%------------------------------------------
% Loop over frequencies

for nf = 1:cfg.fnum

  %------------------------------------------
  % Window parameter settings
  wpar_init(nf);

  %------------------------------------------
  % Loop over windows

  for nt = 1:par.wnum

    % Internal check
    if (par.stop == 1)
      fprintf('... Interrupted by User\n');
      set(han.wbr(1).h,'Visible','off');
      return;
    end

    %------------------------------------------
    % Window time bounds
    [t0 t1 ind] = get_time_bnd(nt);

    %------------------------------------------
    % Performing windowed DFT
    wdft_stan(nf,t0,t1,ind);

    %------------------------------------------
    % Loop over Ktheta and Velocity (parallel)
    kt_vl_loop;

    %------------------------------------------
    % Maxima pick
    max_pick(nf);

    %------------------------------------------
    % Kx-Ky plot
    if par.gui
      kxky_plot(nf);
    end

    %------------------------------------------
    % Save output
    save_out(nf);

  end

  % Processing Status Information
  fprintf('... Done\n');

end

if par.gui
  set(han.wbr(1).h,'Visible','off');
end

return;
