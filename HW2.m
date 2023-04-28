% MATLAB HW2
% Signals and Systems, Spring, 2023
%
% Hayeon Lee @ LIST, Seoul National University
% http://list.snu.ac.kr
% hiyeon@snu.ac.kr
%

%% Press CTRL+ENTER to run this section
% In this homework, you will implement convolution operation using MATLAB
% here is an example using the 'CONV' function already developed

close all; clear all;

% origianl signal 
x = zeros(33,1);
x(15:19) = 1;

% impulse response
h = zeros(33,1);
h(22:26) = 1;

% perform convolution
% output size: length(x) + length(h) - 1
% reference: https://kr.mathworks.com/help/matlab/ref/conv.html#bucr8kb-1-shape
tic
y = conv(x,h);
toc

% visualize convolution result
run_conv(x,h,y); 

%% Problem 1

close all;

% origianl signal
x = zeros(33,1);
x(15:19) = 1;

% impulse response
h = zeros(33,1);
h(22:26) = 1;

y = [];

tic
%%%%%%% implment convolution operation using for loop %%%%%%%%
%%%%%%% output size: length(x) + length(h) - 1 %%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time1 = toc;

disp(['for loop execution time: ',num2str(time1),' seconds']);

% check the result
run_conv(x,h,y);

%% Problem 2


% origianl signal
x = zeros(33,1);
x(15:19) = 1;

% impulse response
h = zeros(33,1);
h(22:26) = 1;

y = [];

%%%%%%% implment convolution operation using matrix multiplication %%%%%%%%
%%%%%%% first, define matrix H that satisfy x'H=y %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% size of H = (length(x), length(x)+length(h)-1) %%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tic

% perform matrix multiplication
y = x' * H;

time2 = toc;
disp(['matrix multiplication execution time: ',num2str(time2),' seconds']);

% check the result
run_conv(x,h,y);

disp(['for loop is ',num2str(time1/time2),' times slower than matrix multiplication']);



