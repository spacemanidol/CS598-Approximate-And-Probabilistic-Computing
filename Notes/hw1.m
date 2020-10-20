x = linspace(-1*pi,1*pi); % part 1
%x = linspace(-2*pi,2*pi); % Part 2
%figure;hold on; grid on; 
digits(5); %Part 1-3
%x = sort(-pi + (pi+pi).*rand(10000,1)); % Part 3
y = sin(6 * x).*x; % Part 1-3
y_cheb = chebfun('x * sin( 6*x )',[-1*pi,1*pi]);% Part 1,3
sum(y - y_cheb(x))
%y_cheb = chebfun('x * sin( 6*x )',[-2*pi,2*pi]);% Part 2
%plot(y_cheb,'b'); %part 1-2
%plot(x,y,'r'); %part 1-2
%plot(x,error) %part 3

%%%%% PART 4
%%%% Sample code
%ff = @(x) tanh(8*(x-.5)) + 1e-6*sin((1:length(x))'.^2);
%ff = @(x) (1/(1+exp((-(8*(x-.5)))))) + 1e-6*sin((1:length(x))'.^2);
%f = chebfun(ff) %# no convergence
%MS = 'markersize';
%plotcoeffs(f,'ob',MS,7), ylim([1e-10 10]), hold on
%f2 = chebfun(ff,'eps',1e-12,'doublelength');
%plotcoeffs(f2,'.k',MS,10), hold off


%gg = @(x) tanh(8*(x-.5)) + 1e-6*sin(200*exp(x));
%g = chebfun(gg,'eps',1e-12); plotcoeffs(g,'ob',MS,4), ylim([1e-18 1e2])


%gg = @(x) (1/(1+exp((-(8*(x-.5)))))) + 1e-6*sin(200*exp(x));
%g2 = chebfun(gg);
%g = chebfun(gg,'eps',1e-20); plotcoeffs(g,'ob',MS,4), ylim([1e-18 1e2])
%plotcoeffs(g2,'.k',MS,6), ylim([1e-18 1e2])
