ata = importdata('Interpolation 300K.txt');
x = data(:,1)
y = data(:,2)
[fitresult,gof ] = fit_power_n(x,y)

xfinal = x_final
xinitial = x_initial

Num = xinitial:26:xfinal;

y2 = fitresult(x)

TABLE = table(Num' , y2);
writetable(TABLE,'Interpolated_data.txt','Delimiter','\t','WriteRowNames',true)
