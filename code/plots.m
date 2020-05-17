close all
clc

% must define x and also y values
x = (1:100);
y = x;
plot(x,y);

x = -110:5:110;
y = x.^2;
figure
plot(x,y);

% Green dotted line with + at points 2 line width
figure
plot(x, y, 'g+:','LineWidth',2)
hold on

% inserting title, naming x and y axis, etc.
plot(x, y), xlabel('xx'), ylabel('yy'), title('Graph x^2'), grid on;

% drawing multiple functions in the same graph
x = (1:0.01:10);
sinx = sin(x);
cosx = cos(x);
% colors on plots and axis (minx, maxx, miny, maxy);
% Colors : blue(b), black(k), cyan(c), green(g), 
% magenta(m), red(r), yellow(y), white(w)
% legend is used to create a legend for each line
plot(x, sinx, 'g', x, cosx, 'r'), legend('sin', 'cos'), axis([0 10 -1 1]); 

figure
x = 1:10;
bar(x, 'c');

% students
s = 1:6;
g = [90, 97, 98, 93, 95, 90];
bar(s,g,'g'), xlabel('Students'), ylabel('Grades'), title ('teste');

% Three-dimensional plots basically display a surface defined by a function in two variables, g = f (x,y).







