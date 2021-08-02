
event = '190822_GF_PC';
ts = '../../../gf/190822_GF_PC';
unitsource = '../../../input/disp/190822_GF_PC';

geometry = pwd;
gf=[geometry,'/gf'];

sc = [ts,'/sc_info.txt'];
stinfo = [ts,'/st_info.txt'];
stname = [ts,'/st_name.txt'];

SC_INFO = importdata(sc);
ST_INFO = importdata(stinfo);
ST_NAME = importdata(stname);

[NSX, NSY] = size(ST_INFO);
STA = ST_INFO(:,2);
BT  = ST_INFO(:,3);
ET  = ST_INFO(:,4);

[NUS, ~] = size(SC_INFO);
weightSC = SC_INFO(:,1);
SC   = SC_INFO(:,2);
SC1  = nonzeros(weightSC);
NUS1 = length(SC1);

%% Data 
dtSYN = 5.0;
dtOBS = 5.0;

d_alp = 0.001; %2.0 % 0.05
b_alp = 0.0; %d_alp; %2.0 %0.01
e_alp = 1; %5 %5
alp   = (b_alp: d_alp: e_alp);

TS = [ 0; 0; 0; 0; 0; 0; 0];

add_wind = 500;
up = '0';

