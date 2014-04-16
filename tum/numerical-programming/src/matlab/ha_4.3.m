% Home Assignment 4.3
% =========================================================================
f = {@(x)(x^2 - 1); @(x)(atan(x)); @(x)(x^3-6*x^2+10*x-2)};
df = {@(x)(2*x); @(x)(1/(x^2+1)); @(x)(3*x^2-12*x+10)};
x0 = 2;
n = 10;
%--------------------------------------------------------------------------
% Finding zeroes
%--------------------------------------------------------------------------
x = zeros(numel(f), n+1);

for i=1:numel(f)
	x(i,:) = newton(f{i},df{i},x0,n);
	disp('Zero finding:');
	disp(x(i,:));
end
