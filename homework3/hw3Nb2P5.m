data = load('Nb2P5.txt');

x = [];
y = [];
for i = 1:75
    x(i) = data(i,1)^2;
    y(i) = data(i,2) * 10^(-3)/data(i,1);
end

plot(x, y)