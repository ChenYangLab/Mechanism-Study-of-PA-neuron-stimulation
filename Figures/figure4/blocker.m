control1 = xlsread('NO SB-14mm att 1r.xlsx','2MS-40','B1:U800');
control2 = xlsread('NO SB-14mm att 1r.xlsx','41','B1:N800');
control = [control1,control2];
[ave, S, Max_RR] = data_processing(control);
%% RR
F_RR_33 = csvread('Results_RR_33_2.csv',1,1);
F_RR_40 = csvread('Results_RR_40_2.csv',1,1);
time = [1:800]/800*40;
signal = [F_RR_33, F_RR_40];
[ave, S, Max_RR] = data_processing(signal);
figure(1)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

F_RR_max = max(ave);
ind = find(ave == F_RR_max);
F_RR_std = S(ind);
F_RR_ave=ave;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])

%% CYTO
F_CYTO = csvread('Results_CYTO.csv',1,1);
F_CYTO_119 = csvread('Results_CYTO_119.csv',1,1);
signal = [F_CYTO, F_CYTO_119];
time = [1:800]/800*40;
[ave, S, Max_CYTO] = data_processing(signal);
figure(2)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])

F_CYTO_max = max(ave);
ind = find(ave == F_CYTO_max);
F_CYTO_std = S(ind);
F_CYTO_ave=ave;


%% GSXT
F_GSXT_99 = csvread('Results_GSXT_99.csv',1,1);
F_GSXT_101 = csvread('Results_GSXT_101.csv',1,1);
F_GSXT_104 = csvread('Results_GSXT_104.csv',1,1);
F_GSXT_116 = csvread('Results_GSXT_116.csv',1,1);
time = [1:800]/8*40;
signal = [F_GSXT_99, F_GSXT_101, F_GSXT_104, F_GSXT_116];
[ave, S, Max_GSXT] = data_processing(signal);
figure(1)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])

F_GSXT_max = max(ave);
ind = find(ave == F_GSXT_max);
F_GSXT_std = S(ind);
F_GSXT_ave=ave;

%% SS
F_SS_20 = csvread('Results_SS_20.csv',1,1);
F_SS_26 = csvread('Results_SS_26.csv',1,1);
F_SS_30 = csvread('Results_SS_30.csv',1,1);
time = [1:800]/800*40;
signal = [F_SS_30];
[ave, S, MAX_SS] = data_processing(signal);
figure(1)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])

F_SS_max = max(ave);
ind = find(ave == F_SS_max);
F_SS_std = S(ind);
F_SS_ave=ave;

%% TTA
F_TTA_61 = csvread('Results_TTA_61.csv',1,1);
F_TTA_67 = csvread('Results_TTA_67.csv',1,1);
F_TTA_68 = csvread('Results_TTA_68.csv',1,1);

time = [1:800]/800*40;
signal = [F_TTA_61,F_TTA_67,F_TTA_68];
[ave, S, Max_TTA] = data_processing(signal);
figure(1)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])

F_TTA_max = max(ave);
ind = find(ave == F_TTA_max);
F_TTA_std = S(ind);
F_TTA_ave=ave;

%% GD
F_GD_70 = csvread('Results_GD_70.csv',1,1);
F_GD_75 = csvread('Results_GD_75.csv',1,1);
F_GD_94 = csvread('Results_GD_94.csv',1,1);
F_GD_176 = csvread('Results_GD_176.csv',1,1);

time = [1:800]/800*40;
signal = [F_GD_70, F_GD_75, F_GD_94, F_GD_176];
[ave, S, Max_GD] = data_processing(signal);
figure(1)
h1 = errorbar(time, ave, S,'color',[0.7 0.7 0.7], 'capsize',0,'linewidth',3);hold on
p1 = plot(time,ave,'k','linewidth',2);hold off;

% Set transparency level (0:1)
alpha = 0.2;   
% Set transparency (undocumented)
set([h1.Bar, h1.Line], 'ColorType', 'truecoloralpha', 'ColorData', [h1.Line.ColorData(1:3); 255*alpha])


F_GD_max = max(ave);
ind = find(ave == F_GD_max);
F_GD_std = S(ind);
F_GD_ave=ave;



%%
function [ave, S, Max_F]=data_processing(signal)
[m,n]=size(signal);
neurons = signal(:,1:n);
baseline = neurons(1,:);
traces = neurons ./ baseline-1;
Max_F = max(traces)';
%traces = traces(:,[1:15,17:24]);
ave = sum(traces')/(n);ave = ave';
S = std(traces');S = S';
end
