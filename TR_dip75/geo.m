%% Depth of ring-faults
topD = 0.0;
botD = 3.0;
%% Radius of the circle/ellipse at the up dip boundary:
% Ra = 3.2;%+botD*(-tand(90-70)+tand(90-72));
% Rb = 2.7;%+botD*(-tand(90-70)+tand(90-72));
Ra = 3.2;%+botD*(-tand(90-70)+tand(90-72));
Rb = 2.7;%+botD*(-tand(90-70)+tand(90-72));

dip2 = 75.0001; %@2km
%% Rotation of geometry (anti-clockwise)
theta = 20;
%% Define Ring-fault portion (anti-clockwise from north) 
% min_strike = [  0]; %
% max_strike = [360];
d_strike = 22.5;
d_s = d_strike;
min_s = 200; 
max_s = 425;
%
min_strike =   0 +[min_s:d_s:max_s-d_s]-theta; 
max_strike = d_s +[min_s:d_s:max_s-d_s]-theta;
% 
%% Divide ring-fault into some parts
%min_strike = [  0];% 60;120;180;240;300;  0]; %
%max_strike = [360];%120;180;240;300;360;360rea];
dz = 1.5;
SLres = 0.9;
%% Bathymetry of source region
bindir = '../../../bin';
indir  = '../../../input';
BathyName = [indir,'/bathy/bathy.SD02.grd']; % Bathymetry file for the modelling (rough)
BathyPlot = [indir,'/bathy/Sumisu10.grd']; % Bathymetry file for plotting (fine)
%% Center of the sill
% Torisima
Xo = 140.0454;
Yo = 31.4816;
kjD = 0.8;
%% Curtis
% Xo=181.4354; %38; %181.375;
% Yo=-30.5406;
%% Output
subSL = '1'; %If 1, each sub sill have each mat. file.

if Ra == Rb
    Rb = Rb + 0.0001;
end
if length(min_strike)==1 && mod(dip2,90)==0
    dip2 = dip2 +0.000001;
end
% dip = atand(botD/(2*tand(90-dip2)));
dip = dip2;

PlotTrue = '0';