

% by Wei Xu
% 08/28/2018
% eclipse project, 2018
% to plot figure 5 in the GRL paper

clear; clc;

load('fig5.mat');

% plot figure 5a
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig5a.time, fig5a.hp, 'r', 'lineWidth', 1);
xlabel('Time (UT)')
ylabel('h (km)')
set(gca, 'XLim', [min(fig5a.time) max(fig5a.time)]);
set(gca, 'XMinorTick','on');
set(gca, 'Xtick', [16.5 17 17.5 18 18.5])
set(gca, 'XtickLabel', {'16:30' '17:00' '17:30' '18:00' '18:30'})

% plot figure 5b
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
[zz tt] = meshgrid(fig5b.alt, fig5b.time);
logne = log10(fig5b.ne);
cbar = 0:0.01:4;
logne(isnan(logne)==1) = min(cbar);
logne(logne<min(cbar)) = min(cbar);
contour(tt, zz, logne, cbar);
colorbar;
caxis([min(cbar) max(cbar)]);
colormap('jet');
xlabel('Time (UT)')
ylabel('Altitude (km)')
set(gca, 'XLim',[16.5 18.5]);
set(gca, 'XMinorTick','on');
set(gca, 'Xtick', [16.5 17 17.5 18 18.5])
set(gca, 'XtickLabel', {'16:30' '17:00' '17:30' '18:00' '18:30'})
set(gca, 'YLim',[60 100]);
set(gca, 'YMinorTick','on');

% plot figure 5c
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
plot(fig5c.time, fig5c.derived, 'k', 'lineWidth', 1); hold on;
plot(fig5c.t, fig5c.euv, 'color', [0 0.5 0], 'lineWidth', 1);
plot(fig5c.t, fig5c.fuv, 'b', 'lineWidth', 1);
plot(fig5c.time_sdo, fig5c.sdo, 'r', 'lineWidth', 1);
xlabel('Time (UT)')
ylabel('Occultation data')
set(gca, 'XLim',[16.5 18.5]);
set(gca, 'XMinorTick','on');
set(gca, 'Xtick', [16.5 17 17.5 18 18.5])
set(gca, 'XtickLabel', {'16:30' '17:00' '17:30' '18:00' '18:30'})

% plot figure 5d
figure;
set(gca,'color',[1 1 1]);
set(gca,'defaultAxesFontSize',16);
semilogx(fig5d.barabash(:,1), fig5d.barabash(:,2), 'k', 'lineWidth', 1); hold on;
semilogx(fig5d.ws1, fig5d.alt, 'b', fig5d.ws2, fig5d.alt, 'b--', 'lineWidth', 1);
semilogx(fig5d.euv1, fig5d.z, 'r', fig5d.euv2, fig5d.z, 'r--', 'lineWidth', 1);
semilogx(fig5d.fuv1, fig5d.z, 'r', fig5d.fuv2, fig5d.z, 'r-.', 'lineWidth', 1);
xlabel('Electron density (cm^{-3})');
ylabel('Altitude (km)');
set(gca,'XLim',[0.1 2e5]);
set(gca,'XMinorTick','on');
set(gca,'Xtick', [1e-1 1e0 1e1 1e2 1e3 1e4 1e5])
set(gca,'XtickLabel', {'10^{-1}' '10^{0}' '10^{1}' '10^{2}' '10^{3}' '10^{4}' '10^{5}'})
set(gca,'YLim',[60 100]);
set(gca,'YMinorTick','on');


