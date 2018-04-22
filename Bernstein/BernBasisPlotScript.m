%Bernstein polynomials plot
x = linspace(0,1,100);
p = 10;
hold on

for i = 0:p
plot(x,Bern(i,p,x),'LineWidth',3)
end