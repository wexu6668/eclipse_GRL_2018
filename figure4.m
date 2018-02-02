

% by Wei Xu
% 01/31/2018
% eclipse project, 2018
% to plot figure 4 in the GRL paper
clear; clc;

load('figure4.mat');

recCO = 903;
recUT = 1149;

% plot figure 4a
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4ad.t1, fig4ad.amplitudeO, 'k', 'lineWidth', 1);
hold on;
plot(fig4ad.t2, fig4ad.amplitudeM, 'k--', 'lineWidth', 1);
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[52 64]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[52 54 56 58 60 62 64]);

% plot figure 4b
[tt rr] = meshgrid(fig4be.t, fig4be.r);
cbar = min(fig4be.amplitude(:)):5:max(fig4be.amplitude(:));
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
[C1 h1] = contourf(tt, rr, fig4be.amplitude', cbar);
colorbar('eastoutside');
caxis([min(cbar) max(cbar)]);
colormap('jet');
hold on;
y = [recUT recUT]; x = [0, 250];
plot(x, y, 'k--', 'lineWidth', 1)
y = [0 1500]; x = [17+43/60 17+43/60];
plot(x, y, 'w--', 'lineWidth', 1)
ylabel('Radial distance (km)');
xlabel('UT (hours)');
set(h1,'LineColor','none');
set(gca,'YLim',[0 1500]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[0 300 600 900 1200 1500]);
set(gca,'XLim',[min(fig4be.t) max(fig4be.t)]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16 17 18 19 20]);
set(gca,'XTickLabel',{'16:00' '17:00' '18:00' '19:00' '20:00'});

% plot figure 4c
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4cf.distance, fig4cf.amplitude(1, :), 'b', fig4cf.distance, fig4cf.amplitude(2, :), 'r', 'lineWidth', 1); 
x = [recCO recCO]; y = [-1e3 1e3];
hold on; 
plot(x, y, 'k--', 'lineWidth', 1)
xlabel('Distance from NML (km)');
ylabel('Amplitude (dB)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[55 85]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[55 65 75 85]);

% plot figure 4d
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4ad.t1, fig4ad.phaseO, 'r', 'lineWidth', 1);
hold on; 
plot(fig4ad.t2, fig4ad.phaseM, 'r--', 'lineWidth', 1);
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16.5 19]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16.5 17 17.5 18 18.5 19]);
set(gca,'YLim',[-20 110]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-20 0 20 40 60 80 100]);

% plot figure 4e
cbar = min(fig4be.phase(:)):5:max(fig4be.phase(:));
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
[C1 h1] = contourf(tt, rr, fig4be.phase', cbar);
colorbar('eastoutside');
caxis([min(cbar) max(cbar)]);
colormap('jet');
hold on;
y = [recUT recUT]; x = [0, 250];
plot(x, y, 'k--', 'lineWidth', 1)
y = [0 1500]; x = [17+43/60 17+43/60];
plot(x, y, 'w--', 'lineWidth', 1)
ylabel('Radial distance (km)');
xlabel('UT (hours)');
set(h1,'LineColor','none');
set(gca,'YLim',[0 1500]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[0 300 600 900 1200 1500]);
set(gca,'XLim',[min(fig4be.t) max(fig4be.t)]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16 17 18 19 20]);
set(gca,'XTickLabel',{'16:00' '17:00' '18:00' '19:00' '20:00'});

% plot figure 4f
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig4cf.distance, fig4cf.phase(1, :), 'b', fig4cf.distance, fig4cf.phase(2, :), 'r', 'lineWidth', 1); 
x = [recCO recCO]; y = [-1e3 1e3];
hold on; 
plot(x, y, 'k--', 'lineWidth', 1)
xlabel('Distance from NML (km)');
ylabel('Phase (deg)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[0 440]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[0 100 200 300 400]);

