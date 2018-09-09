

% by Wei Xu
% 08/28/2018
% eclipse project, 2018
% to plot figure 4 in the GRL paper

clear; clc;

load('fig4.mat');

% plot figure 4a
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',18);
cbar = 0:0.2:34;
[c,h]=contourf(fig4a.beta, fig4a.hp, fig4a.ampco, cbar); 
hold on;
set(h,'LineColor','none'); colorbar('NorthOutside');
colormap('jet'); caxis([min(cbar) max(cbar)])
xlabel(gca, '\beta (km^{-1})');
ylabel(gca, 'h (km)');
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');

% plot figure 4b
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4b.time, fig4b.amp, 'k', fig4b.t, fig4b.ws, 'b')
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[42 56]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[42 44 46 48 50 52 54 56]);

% plot figure 4c
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4c.time, fig4c.pha, 'k', fig4c.t, fig4c.ws, 'b')
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[-30 170]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-30 10 50 90 130 170]);

% plot figure 4d
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',18);
cbar = 0:0.2:21;
[c,h]=contourf(fig4d.beta, fig4d.hp, fig4d.amput, cbar); 
hold on;
set(h,'LineColor','none'); colorbar('NorthOutside');
colormap('jet'); caxis([min(cbar) max(cbar)])
xlabel(gca, '\beta (km^{-1})');
ylabel(gca, 'h (km)');
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');

% plot figure 3e
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4e.time, fig4e.amp, 'k', fig4e.t, fig4e.ws, 'b')
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[52 66]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[52 54 56 58 60 62 64 66]);

% plot figure 3f
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4f.time, fig4f.pha, 'k', fig4f.t, fig4f.ws, 'b')
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[-20 110]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-20 0 20 40 60 80 100]);

