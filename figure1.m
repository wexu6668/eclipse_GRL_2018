

% by Wei Xu
% 01/31/2018
% eclipse project, 2018
% to plot figure 1 in the GRL paper

clear; clc;

% load occultation data for figure 1
load('figure1.mat');

% define grid cells
lons = linspace(-180+0.5,180-0.5,360);
lats = linspace(-90+0.5, 90-0.5, 180);

% coast lines and states
load coast;
states = geoshape(shaperead('usastatehi', 'UseGeoCoords', true));

% set up figure 1a
h1 = figure;
set(0,'defaultAxesFontSize',16); 
ax1 = axes;
xlabel(ax1,'Longitude (deg)');
ylabel(ax1,'Latitude (deg)');
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
cax = colorbar('peer',ax1);
colormap('Gray');
c1 = imagesc(lons,lats,zeros(length(lons), length(lats)),'parent',ax1);
axis(ax1,'xy');
hold(ax1,'on');

% plot coast line
plot(long, lat, 'w', 'linewidth', 1); hold on; 
% plot states
for i = 1:length(states)
    plot(states(i).Longitude, states(i).Latitude, 'w', 'linewidth', 1); 
end
% plot the receiver in CO
plot(fig1.lonC, fig1.latC, 'c--', 'LineWidth', 1);
% plot the receiver in UT
plot(fig1.lonU, fig1.latU, 'c--', 'LineWidth', 1);
% plot the transmitter in ND
plot(fig1.trans(1), fig1.trans(2), 'c.', 'MarkerSize', 18);
% plot the great circle paths
plot(fig1.rC(1), fig1.rC(2), 'c.', fig1.rU(1), fig1.rU(2), 'c.', 'MarkerSize', 18, 'LineWidth', 1)
% plot the totality path
plot(fig1.upp.lon, fig1.upp.lat, 'r--', fig1.bot.lon, fig1.bot.lat, 'r--', fig1.cen.lon, fig1.cen.lat, 'r-', 'LineWidth', 1);
% plot the EUV data
set(c1,'cdata',fig1.euv);
cb1 = colorbar(ax1, 'northoutside');
set(ax1,'xlim',[-128 -68],'ylim',[25 52]); 
caxis(ax1,[0 1]);


% set up figure 1b
h2 = figure;
set(0,'defaultAxesFontSize',16); 
ax2 = axes;
xlabel(ax2,'Longitude (deg)');
ylabel(ax2,'Latitude (deg)');
set(gca,'XMinorTick','on');
set(gca,'YMinorTick','on');
set(ax2,'xlim',[-128 -68],'ylim',[25 52]); 
cax = colorbar('peer',ax2);
colormap('Gray');
c2 = imagesc(lons,lats,zeros(length(lons), length(lats)),'parent',ax2);
axis(ax2,'xy');
hold(ax2,'on');

% plot coast line
plot(long, lat, 'w', 'linewidth', 1); hold on; 
% plot states
for i = 1:length(states)
    plot(states(i).Longitude, states(i).Latitude, 'w', 'linewidth', 1); 
end
% plot the receiver in CO
plot(fig1.lonC, fig1.latC, 'c--', 'LineWidth', 1);
% plot the receiver in UT
plot(fig1.lonU, fig1.latU, 'c--', 'LineWidth', 1);
% plot the transmitter in ND
plot(fig1.trans(1), fig1.trans(2), 'c.', 'MarkerSize', 18);
% plot the great circle paths
plot(fig1.rC(1), fig1.rC(2), 'c.', fig1.rU(1), fig1.rU(2), 'c.', 'MarkerSize', 18, 'LineWidth', 1)
% plot the totality path
plot(fig1.upp.lon, fig1.upp.lat, 'r--', fig1.bot.lon, fig1.bot.lat, 'r--', fig1.cen.lon, fig1.cen.lat, 'r-', 'LineWidth', 1);
% plot the EUV data
set(c2,'cdata',fig1.vis);
cb2 = colorbar(ax2, 'northoutside');
set(ax2,'xlim',[-128 -68],'ylim',[25 52]); 
caxis(ax2,[0 1]);



