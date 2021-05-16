rawInput = [20.55 22.44 25.37 27.13 29.45 30.10 30.96 34.06 36.42 38.09 39.13 39.99 41.93 44.59 47.30 52.89 55.73 56.76 59.17 60.63];
rawOutput = [5126 6217 7730 9145 10460 11387 12353 15750 18304 19836 21024 19490 20433 22598 25107 33442 36836 40548 42927 43462];
output = -20 * ones(1,20) + rawOutput + 20 * rand(1,size(rawOutput,2));


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
x = linspace(1,20,20);
x2 = linspace(1,20,100);
hold on
plot(x,rawOutput,'b');
plot(x2,answer1,'r');
