%AW: Looks good in general. See minor comments below. 0.94/1. 

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. 


dlmwrite('class4.txt',0);
fid=fopen('class4.txt', 'w'); %cuando pones w en open, borra todo, pq se pone en writing mode
fprintf(fid, 'Random numbers 1 \n');
for firstloop=1:10;
    firstrand=(rand(13,1)');
dlmwrite('class4.txt',firstrand,'-append'); %append es para escribir después del último entry
end %si haces firststrand(firstloop), te va a dar los números en diagonal, ósea es como decir... firstrand=x y firstloop=y)
fclose(fid);

fid=fopen('class4.txt', 'a');
fprintf(fid, 'Random numbers 2 \n');
for secondloop=1:9;
    firstrand=(rand(7,1)');
dlmwrite('class4.txt',firstrand,'-append'); %append es para escribir después del último entry
end %si haces firststrand(firstloop), te va a dar los números en diagonal, ósea es como decir... firstrand=x y firstloop=y)
fclose(fid);

%(b) Write code that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

%AW: this is basically correct but your array at the end is still a cell array of strings, not an array of numbers.
%Need to use the str2num function. -0.01. 
fid=fopen('class4.txt', 'r');
line1=fgetl(fid);
line2=fgetl(fid);
line2;
array=strsplit(line2, ',')


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

%Miguel Angel: let's say our array is this one:
x=rand(4)*10;
ceil(x);

%Building the function I called: Evaluate
%if you type Evaluate(x) it should give a True. Because the sum of the
%array it's greater than 10


%AW: the idea is correct but you don't return any variable. Need to return the logical variable, not just print
% true or false. -0.05. 

function [ ] = Evaluate( x )
F42=sum(sum(x));
if F42>=10;
    disp('True');
else disp('False');
end
end

%Now if we change the values of x

x=rand(4);
Evaluate(x)

%this should give False.

