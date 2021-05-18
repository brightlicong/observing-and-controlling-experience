PositiveMaxVoh =  900; %正向转动时最大速度的高电平时长
PositiveMinVoh = 1400;
NegativeMaxVoh = 2100; %逆向转动时最大速度的高电平时长
NegativeMinVoh = 1600;
voh = 1500;
dataSet = zeros(row1+row2,testTimesPerV+1);
dataSet(1:row1,1) = linspace(app.PositiveMaxVoh,app.PositiveMinVoh,row1);
dateSet(row1+1:end,1) = linspace(app.NegativeMixVoh,app.NegativeMaxVoh,row2);