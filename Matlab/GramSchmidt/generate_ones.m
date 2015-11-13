%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function generate_ones.m
%
% Computes the matrix of monomials given the required order.
% Inputs:
% highest_order    order
% Outputs:
% Matrix with the coefficients
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ones = generate_ones(highest_order)
  ones = zeros(highest_order);
  for i = 1:highest_order
    ones(i, highest_order-i+1) = 1;
  end