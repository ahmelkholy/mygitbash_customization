FigureWidth=2*3.3; %inches; this is used to control the figure width
position=1; %inches
Proportion=0.65;
AxisLineWidth=1.3;
LableFontsize=10; % this is used to control the font size
box on
grid off
set(gca,'FontSize',LableFontsize,'LineWidth',AxisLineWidth)
set(get(gca,'xlabel'),'fontsize',LableFontsize)
set(get(gca,'ylabel'),'fontsize',LableFontsize)
set(gcf,'Units', 'inches');set(gcf,'Position',[position,position,FigureWidth,FigureWidth*Proportion])