N = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];

E = [1312.0, 2372.3, 520.2, 899.5, 800.6, 1086.5, 1402.3, 1313.9, 1681.0, 2080.7, 495.8, 737.7, 577.5, 786.5, 1011.8, 999.6, 1251.2, 1520.6, 418.8, 589.8, 633.1];

for i = 1:21
    E(i) = E(i) * 0.013642;
end

Z1 = [1,2,1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8,1,2,2];
E1 = [];

for i = 1:2
    E1(i) = 13.6*Z1(i)*Z1(i);
end
for i = 3:10
    E1(i) = 13.6*Z1(i)*Z1(i)/4;
end
for i=11:18
    E1(i) = 13.6*Z1(i)*Z1(i)/9;
end
for i=19:21
    E1(i) = 13.6*Z1(i)*Z1(i)/16;
end

Z2 = [1, 1.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 1, 1.5, 2, 2.5, 3, 3.5, ..., 
    4, 4.5, 1, 1.5, 1.5];
E2 = [];

for i = 1:2
    E2(i) = 13.6*Z2(i)*Z2(i);
end
for i = 3:10
    E2(i) = 13.6*Z2(i)*Z2(i)/4;
end
for i=11:18
    E2(i) = 13.6*Z2(i)*Z2(i)/9;
end
for i=19:21
    E2(i) = 13.6*Z2(i)*Z2(i)/16;
end

plot(N, E)
hold on
plot(N, E1)
hold on
plot(N, E2)