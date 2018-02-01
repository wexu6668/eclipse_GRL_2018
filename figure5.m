

% by Wei Xu
% 01/31/2018
% eclipse project, 2018
% to plot figure 5 in the GRL paper
clear; clc;

load('figure5.mat');

recCO = 903; 
recUT = 1149; 

% plot figure 5a
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
% plot amplitude
plot(fig5.dft(1).dist, 20*log10(fig5.dft(1).Er.amp), 'lineWidth', 1); 
hold on;
plot(fig5.dft(2).dist, 20*log10(fig5.dft(2).Er.amp), 'lineWidth', 1);
% plot receiver locations
x = [recCO recCO]; y = [-1e3 1e3];
plot(x, y, 'k--', 'lineWidth', 1);
x = [recUT recUT]; y = [-1e3 1e3];
plot(x, y, 'k--', 'lineWidth', 1);
% label
xlabel('Radial distance (km)');
ylabel('Amplitude (dB)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[-142 -90]);
set(gca,'Ytick', [-140 -130 -120 -110 -100 -90])
set(gca,'YMinorTick','on');

% calculate phase (deg) for the two h' and beta combinations. 
pha1 = fig5.dft(1).Er.phase + (2*pi/3e8 * fig5.dft(1).dftfreqs*fig5.dft(1).dist*1000);
pha1 = pha1/pi*180;
pha2 = fig5.dft(2).Er.phase + (2*pi/3e8 * fig5.dft(2).dftfreqs*fig5.dft(2).dist*1000);
pha2 = pha2/pi*180;

% plot figure 5b
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
% plot phase
plot(fig5.dft(1).dist, pha1, 'lineWidth', 1); 
hold on;
plot(fig5.dft(2).dist, pha2, 'lineWidth', 1);
% plot receiver locations
x = [recCO recCO]; y = [-1e3 1e3];
plot(x, y, 'k--', 'lineWidth', 1);
x = [recUT recUT]; y = [-1e3 1e3];
plot(x, y, 'k--', 'lineWidth', 1);
% label
xlabel('Radial distance (km)');
ylabel('Phase (deg)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[-10 480]);
set(gca,'Ytick', [0 100 200 300 400])
set(gca,'YMinorTick','on');
