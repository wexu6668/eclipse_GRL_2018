

% by Wei Xu
% 01/31/2018
% eclipse project, 2018
% to plot figure 2 in the GRL paper

clear; clc

load('figure2.mat');

fSize = 16;

% plot figure 2a
cbar = 0:0.1:5;
[tt zz] = meshgrid(fig2a.t, fig2a.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2a.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C1 h1] = contourf(tt, zz, logne, cbar);
colorbar('eastoutside','FontSize',fSize,'YTick',[0 1 2 3 4 5],'YTickLabel',{'10^0' '10^1' '10^2' '10^3' '10^4' '10^5'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h1,'LineColor','none');
hold on;
contour(tt, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
x = [88*60+18 88*60+18]; y = [0 110]; hold on; plot(x, y, 'w--','LineWidth',1);
x = [89*60+52 89*60+52]; y = [0 110]; hold on; plot(x, y, 'w--','LineWidth',1);
xlabel('UT (hours)');
ylabel('Altitude (km)');
set(gca,'XLim',[min(fig2a.t) max(fig2a.t)]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [88*60 89*60 90*60 91*60 92*60])
set(gca,'XtickLabel', {'16:00' '17:00' '18:00' '19:00' '20:00'})
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2b
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
semilogx(fig2b.ne1, fig2b.z, 'k', fig2b.ne2, fig2b.z, 'r', 'lineWidth', 1)
xlabel('Electron density (cm^{-3})');
ylabel('Altitude (km)');
set(gca,'XLim',[1e-1 1e5]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [1e-1 1e0 1e1 1e2 1e3 1e4 1e5])
set(gca,'XtickLabel', {'10^{-1}' '10^{0}' '10^{1}' '10^{2}' '10^{3}' '10^{4}' '10^{5}'})
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2c
[rr zz] = meshgrid(fig2c.r, fig2c.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2c.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C2 h2] = contourf(rr, zz, logne, cbar);
colorbar('eastoutside','FontSize',fSize,'YTick',[0 1 2 3 4 5],'YTickLabel',{'10^0' '10^1' '10^2' '10^3' '10^4' '10^5'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h2,'LineColor','none');
hold on;
contour(rr, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
xlabel('Distance from the transmitter (km)');
ylabel('Altitude (km)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2d
[rr zz] = meshgrid(fig2c.r, fig2c.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2d.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C3 h3] = contourf(rr, zz, logne, cbar);
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h3,'LineColor','none');
hold on;
contour(rr, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
xlabel('Distance from the transmitter (km)');
ylabel('Altitude (km)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2e
[tt zz] = meshgrid(fig2e.t, fig2e.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2e.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C1 h1] = contourf(tt, zz, logne, cbar);
colorbar('eastoutside','FontSize',fSize,'YTick',[0 1 2 3 4 5],'YTickLabel',{'10^0' '10^1' '10^2' '10^3' '10^4' '10^5'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h1,'LineColor','none');
hold on;
contour(tt, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
x = [88*60+18 88*60+18]; y = [0 110]; hold on; plot(x, y, 'w--','LineWidth',1);
x = [89*60+43 89*60+43]; y = [0 110]; hold on; plot(x, y, 'w--','LineWidth',1);
xlabel('UT (hours)');
ylabel('Altitude (km)');
set(gca,'XLim',[min(fig2e.t) max(fig2e.t)]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [88*60 89*60 90*60 91*60 92*60])
set(gca,'XtickLabel', {'16:00' '17:00' '18:00' '19:00' '20:00'})
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2f
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
semilogx(fig2f.ne1, fig2f.z, 'k', fig2f.ne2, fig2f.z, 'r', 'lineWidth', 1)
xlabel('Electron density (cm^{-3})');
ylabel('Altitude (km)');
set(gca,'XLim',[1e-1 1e5]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [1e-1 1e0 1e1 1e2 1e3 1e4 1e5])
set(gca,'XtickLabel', {'10^{-1}' '10^{0}' '10^{1}' '10^{2}' '10^{3}' '10^{4}' '10^{5}'})
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2g
[rr zz] = meshgrid(fig2g.r, fig2g.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2g.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C2 h2] = contourf(rr, zz, logne, cbar);
colorbar('eastoutside','FontSize',fSize,'YTick',[0 1 2 3 4 5],'YTickLabel',{'10^0' '10^1' '10^2' '10^3' '10^4' '10^5'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h2,'LineColor','none');
hold on;
contour(rr, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
xlabel('Distance from the transmitter (km)');
ylabel('Altitude (km)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)

% plot figure 2h
[rr zz] = meshgrid(fig2g.r, fig2g.z);
figure;
set(gca,'defaultAxesFontSize',16);
set(gca,'color',[1 1 1]);
logne = log10(fig2h.ne);
logne(logne<min(cbar)) = min(cbar);
logne(isnan(logne) == 1) = min(cbar);
[C3 h3] = contourf(rr, zz, logne, cbar);
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h3,'LineColor','none');
hold on;
contour(rr, zz, logne, [2 3 4], 'linecolor','k','LineWidth',1);
xlabel('Distance from the transmitter (km)');
ylabel('Altitude (km)');
set(gca,'XLim',[0 1500]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [0 300 600 900 1200 1500])
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');
set(gca,'YTick',[60 70 80 90 100], 'fontsize',fSize)


