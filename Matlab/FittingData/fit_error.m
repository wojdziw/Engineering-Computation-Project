%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function laguerre_scaled_fit.m
%
% Computes a Laguerre fit to the distribution data
% Inputs:

% Outputs:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function error = fit_error(fo, x, n, y)
  alpha = y(1);
  scale = y(2);
  
  laguerre = laguerre_scaled_fit(fo, x, n, alpha, scale);
 
  error = 0;
  for i = 1:length(fo)
    error = error + (fo(i)-laguerre(i))^2;
  end
  
end