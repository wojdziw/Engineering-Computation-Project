%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function laguerre_optimal_fit.m
%
% Computes a Laguerre fit to the distribution data
% Inputs:

% Outputs:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function result = laguerre_optimal_fit(fo, x)

  params = fminsearch(@(params) fit_error(fo, x, 5, params), [10, 10]);

  result = laguerre_scaled_fit(fo, x, 5, params(1), params(2));
    
end
