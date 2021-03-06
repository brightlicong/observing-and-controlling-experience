num = 1000;
rawInput = linspace(800,2200,num);
rawOutput = linspace(1,2500,num);
output = -20 * ones(1,num) + rawOutput + 20 * rand(1,size(rawOutput,2));

%% BP????
[pn, inputStr] = mapminmax(rawInput);
[tn, outputStr] = mapminmax(output);
net = newff(pn,tn,[1,3,5,3,1]);
net.trainParam.show = 20;
net.trainParam.epochs = 1000;
net.trainParam.lr = 0.05;
net.trainParam.goal = 0.65 * 10^(-3);
net.divideFcn = '';
net = train(net, pn, tn);
answer = sim(net,pn);
answer1 = mapminmax('reverse',answer,outputStr);
x = linspace(1,20,num);
hold on
plot(x,rawOutput+5,'b');
plot(x,rawOutput-5,'b');
plot(x,output,'y');
plot(x,answer1,'r');

%% ƽ??
smoothedY = smooth(output);
hold on
plot(x,rawOutput+10,'b');
plot(x,rawOutput-10,'b');
plot(x,output,'r');
plot(x,smoothedY);

%% ????
x = zeros(1,4);
clear x
x.app = 1