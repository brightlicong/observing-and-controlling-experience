PositiveMaxVoh =  900; %����ת��ʱ����ٶȵĸߵ�ƽʱ��
PositiveMinVoh = 1400;
NegativeMaxVoh = 2100; %����ת��ʱ����ٶȵĸߵ�ƽʱ��
NegativeMinVoh = 1600;
voh = 1500;
dataSet = zeros(row1+row2,testTimesPerV+1);
dataSet(1:row1,1) = linspace(app.PositiveMaxVoh,app.PositiveMinVoh,row1);
dateSet(row1+1:end,1) = linspace(app.NegativeMixVoh,app.NegativeMaxVoh,row2);