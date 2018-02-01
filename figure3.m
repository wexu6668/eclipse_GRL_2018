

% by Wei Xu
% 01/31/2018
% eclipse project, 2018
% to plot figure 3 in the GRL paper

clear; clc; 

load('figure3.mat');

recCO = 903;
recUT = 1149;

% plot figure 3a
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3ad.t1, fig3ad.amplitudeO, 'k', 'lineWidth', 1);
hold on;
plot(fig3ad.t2, fig3ad.amplitudeM, 'k--', 'lineWidth', 1);
xlabel('UT (hours)');
ylabel('Amplitude (dB)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[54 74]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[54 58 62 66 70 74]);

% plot figure 3d
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3ad.t1, fig3ad.phaseO, 'r', 'lineWidth', 1);
hold on; 
plot(fig3ad.t2, fig3ad.phaseM, 'r--', 'lineWidth', 1);
xlabel('UT (hours)');
ylabel('Phase (deg)');
set(gca, 'xlim',[16 20]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16  17 18 19 20]);
set(gca,'YLim',[-30 170]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[-30 10 50 90 130 170]);

% plot figure 3b
[tt rr] = meshgrid(fig3be.t, fig3be.r);
cbar = min(fig3be.amplitude(:)):5:max(fig3be.amplitude(:));
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
[C1 h1] = contourf(tt, rr, fig3be.amplitude', cbar);
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
set(gca,'XLim',[min(fig3be.t) max(fig3be.t)]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16 17 18 19 20]);
set(gca,'XTickLabel',{'16:00' '17:00' '18:00' '19:00' '20:00'});

% plot figure 3e
cbar = min(fig3be.phase(:)):5:max(fig3be.phase(:));
figure; 
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
[C1 h1] = contourf(tt, rr, fig3be.phase', cbar);
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
set(gca,'XLim',[min(fig3be.t) max(fig3be.t)]);
set(gca,'XMinorTick','on');
set(gca,'XTick',[16 17 18 19 20]);
set(gca,'XTickLabel',{'16:00' '17:00' '18:00' '19:00' '20:00'});

% plot figure 3c
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3cf.distance, fig3cf.amplitude(1, :), 'b', fig3cf.distance, fig3cf.amplitude(2, :), 'r', 'lineWidth', 1); 
x = [recCO recCO]; y = [-1e3 1e3];
hold on; 
plot(x, y, 'k--', 'lineWidth', 1)
xlabel('Distance from NML (km)');
ylabel('Amplitude (dB)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[45 75]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[45 55 65 75]);

% plot figure 3f
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig3cf.distance, fig3cf.phase(1, :), 'b', fig3cf.distance, fig3cf.phase(2, :), 'r', 'lineWidth', 1); 
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