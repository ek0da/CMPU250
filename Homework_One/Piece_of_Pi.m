%4.a
%clears all valriables to ensure accuracy between runs.
clearvars
% n is the number of randomly generated points
n = 10000;
% num.circle is the number of points that are inside the circle.
% initialized to zero.
num.circle = 0;
%Circle is an array containing the x and y values randomly generated. note
%rand generates a random number between 0 and one non-inclusive. I can't
%find a method to make it inclusive, thus there is some inbuilt error in
%this.
Circle =  rand(3,n);
%creates a third row and sets it to zero. This third row is a boolean that
%is true when the point is inside the circle.
Circle(3,1:n) = 0;
% for each point:
for i = 1:n
    %if x^2 + y^2 <= 1
    if (Circle(1,i)^2 +Circle(2,i)^2) <= 1
        % the point is inside the circel, iterate num.circle.
        num.circle = num.circle + 1;
        % set the boolean to true.
        Circle(3,i) = 1;
    end
end
% ratio is an estimate of the area under the circle in quandrent one.
ratio = num.circle / n;
% since the area inside one quandrent is 1/4 of the are of the total
% circle, and r = 1, A = pi / 4, thus pi = 4 * A.
pi.est = 4 * ratio;
disp(pi.est);

%b
% note, I can't figure out how to plot this. The idea was to make subsets 
% of Circle, one containing all of the points inside the circle, and one
% outside, and then display them on the same plot using two plot calls with
% different color values. W
%xCircle = Circle(Circle(3,1:n) > 0,1:n);
%xSquare = Circle(Circle(3,1:n) == 0,1:n);
%plot(xCircle,'bo');
%hold on;
%plot(xSquare,'bo');

%c
%clears all valriables to ensure accuracy between runs.
clearvars
%Pi is an array that contains the values of pi generated by the simulation.
Pi(1:1000) = 0;
% a for loop to run the simulation 100 times.
for k = 1:1000

% n is the number of randomly generated points
n = 10000;
% num.circle is the number of points that are inside the circle.
% initialized to zero.
num.circle = 0;
%Circle is an array containing the x and y values randomly generated. note
%rand generates a random number between 0 and one non-inclusive. I can't
%find a method to make it inclusive, thus there is some inbuilt error in
%this.
Circle =  rand(3,n);
%creates a third row and sets it to zero. This third row is a boolean that
%is true when the point is inside the circle.
Circle(3,1:n) = 0;
% for each point:
for i = 1:n
    %if x^2 + y^2 <= 1
    if (Circle(1,i)^2 +Circle(2,i)^2) <= 1
        % the point is inside the circel, iterate num.circle.
        num.circle = num.circle + 1;
        % set the boolean to true.
        Circle(3,i) = 1;
    end
end
% ratio is an estimate of the area under the circle in quandrent one.
ratio = num.circle / n;
% since the area inside one quandrent is 1/4 of the are of the total
% circle, and r = 1, A = pi / 4, thus pi = 4 * A.
pi.est = 4 * ratio;
Pi(k) = pi.est;
end
max.pi = max(Pi);
min.pi = min(Pi);
mean.pi = mean(Pi);
disp(max.pi);
disp(min.pi);
disp(mean.pi);

