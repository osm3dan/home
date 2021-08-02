geo
% CMT input
YYYY =  2015;
MM   =     5;
DD   =     2;
hh   =    16;
mm   =    50;
se   = 43.00;
lon  = 140.053;
lat = 31.485;
name = [extractAfter(pwd,'case/'),'/f_alp_',num2str(f_alp,"%4.3f")];
event='010176A';
ts   =   5.0;
hd   =   5.0;
nlat  = lat;
nlon =  lon;

dep = (topD+botD)/2;
ndep = dep;
[Mw, M0]=mw(M);
Mrr = M(1,1);
Mtt = M(2,2);
Mpp = M(3,3);
Mrt = M(1,2);
Mrp = M(1,3);
Mtp = M(2,3);
