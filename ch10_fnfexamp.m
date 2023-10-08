function ch10_fnfexamp(funh)
%fnfexamp receives the handle of a functio and plots that function of x
%(which is 1:.25:6)
%  Format: ch10_fnfexamp(function handle)

x = 1:.25:6;
y = funh(x);
plot(x,y,'ko')
xlabel('x')
ylabel('fn(x)')
title(func2str(funh))

end

