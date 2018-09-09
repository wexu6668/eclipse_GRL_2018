

% by Wei Xu
% 08/28/2018
% eclipse project, 2018
% to plot figure 3 in the GRL paper

clear; clc; 

load('fig3.mat');

% plot figure 3a
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3a.time, fig3a.amp, 'k', fig3a.t, fig3a.euv, 'k--', fig3a.t, fig3a.fuv, 'k-.')
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[42 56]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[42 44 46 48 50 52 54 56]);

% plot figure 3b
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3b.time, fig3b.pha, 'r', fig3b.t, fig3b.euv, 'r--', fig3b.t, fig3b.fuv, 'r-.');
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[-30 170]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-30 10 50 90 130 170]);

% plot figure 3c
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3c.time, fig3c.amp, 'k', fig3c.t, fig3c.euv, 'k--', fig3c.t, fig3c.fuv, 'k-.'); 
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[52 66]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[52 54 56 58 60 62 64 66]);

% plot figure 3d
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3d.time, fig3d.pha, 'r', fig3d.t, fig3d.euv, 'r--', fig3d.t, fig3d.fuv, 'r-.')
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[-20 110]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-20 0 20 40 60 80 100]);


