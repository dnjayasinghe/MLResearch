%% CPA simulation
clear;
sbox = [ ...
	hex2dec('63'), hex2dec('7c'), hex2dec('77'), hex2dec('7b'), hex2dec('f2'), hex2dec('6b'), hex2dec('6f'), hex2dec('c5'), hex2dec('30'), hex2dec('01'), hex2dec('67'), hex2dec('2b'), hex2dec('fe'), hex2dec('d7'), hex2dec('ab'), hex2dec('76'), ... %0
	hex2dec('ca'), hex2dec('82'), hex2dec('c9'), hex2dec('7d'), hex2dec('fa'), hex2dec('59'), hex2dec('47'), hex2dec('f0'), hex2dec('ad'), hex2dec('d4'), hex2dec('a2'), hex2dec('af'), hex2dec('9c'), hex2dec('a4'), hex2dec('72'), hex2dec('c0'), ... %1
	hex2dec('b7'), hex2dec('fd'), hex2dec('93'), hex2dec('26'), hex2dec('36'), hex2dec('3f'), hex2dec('f7'), hex2dec('cc'), hex2dec('34'), hex2dec('a5'), hex2dec('e5'), hex2dec('f1'), hex2dec('71'), hex2dec('d8'), hex2dec('31'), hex2dec('15'), ... %2
	hex2dec('04'), hex2dec('c7'), hex2dec('23'), hex2dec('c3'), hex2dec('18'), hex2dec('96'), hex2dec('05'), hex2dec('9a'), hex2dec('07'), hex2dec('12'), hex2dec('80'), hex2dec('e2'), hex2dec('eb'), hex2dec('27'), hex2dec('b2'), hex2dec('75'), ... %3
	hex2dec('09'), hex2dec('83'), hex2dec('2c'), hex2dec('1a'), hex2dec('1b'), hex2dec('6e'), hex2dec('5a'), hex2dec('a0'), hex2dec('52'), hex2dec('3b'), hex2dec('d6'), hex2dec('b3'), hex2dec('29'), hex2dec('e3'), hex2dec('2f'), hex2dec('84'), ... %4
	hex2dec('53'), hex2dec('d1'), hex2dec('00'), hex2dec('ed'), hex2dec('20'), hex2dec('fc'), hex2dec('b1'), hex2dec('5b'), hex2dec('6a'), hex2dec('cb'), hex2dec('be'), hex2dec('39'), hex2dec('4a'), hex2dec('4c'), hex2dec('58'), hex2dec('cf'), ... %5
	hex2dec('d0'), hex2dec('ef'), hex2dec('aa'), hex2dec('fb'), hex2dec('43'), hex2dec('4d'), hex2dec('33'), hex2dec('85'), hex2dec('45'), hex2dec('f9'), hex2dec('02'), hex2dec('7f'), hex2dec('50'), hex2dec('3c'), hex2dec('9f'), hex2dec('a8'), ... %6
	hex2dec('51'), hex2dec('a3'), hex2dec('40'), hex2dec('8f'), hex2dec('92'), hex2dec('9d'), hex2dec('38'), hex2dec('f5'), hex2dec('bc'), hex2dec('b6'), hex2dec('da'), hex2dec('21'), hex2dec('10'), hex2dec('ff'), hex2dec('f3'), hex2dec('d2'), ... %7
	hex2dec('cd'), hex2dec('0c'), hex2dec('13'), hex2dec('ec'), hex2dec('5f'), hex2dec('97'), hex2dec('44'), hex2dec('17'), hex2dec('c4'), hex2dec('a7'), hex2dec('7e'), hex2dec('3d'), hex2dec('64'), hex2dec('5d'), hex2dec('19'), hex2dec('73'), ... %8
	hex2dec('60'), hex2dec('81'), hex2dec('4f'), hex2dec('dc'), hex2dec('22'), hex2dec('2a'), hex2dec('90'), hex2dec('88'), hex2dec('46'), hex2dec('ee'), hex2dec('b8'), hex2dec('14'), hex2dec('de'), hex2dec('5e'), hex2dec('0b'), hex2dec('db'), ... %9
	hex2dec('e0'), hex2dec('32'), hex2dec('3a'), hex2dec('0a'), hex2dec('49'), hex2dec('06'), hex2dec('24'), hex2dec('5c'), hex2dec('c2'), hex2dec('d3'), hex2dec('ac'), hex2dec('62'), hex2dec('91'), hex2dec('95'), hex2dec('e4'), hex2dec('79'), ... %A
	hex2dec('e7'), hex2dec('c8'), hex2dec('37'), hex2dec('6d'), hex2dec('8d'), hex2dec('d5'), hex2dec('4e'), hex2dec('a9'), hex2dec('6c'), hex2dec('56'), hex2dec('f4'), hex2dec('ea'), hex2dec('65'), hex2dec('7a'), hex2dec('ae'), hex2dec('08'), ... %B
	hex2dec('ba'), hex2dec('78'), hex2dec('25'), hex2dec('2e'), hex2dec('1c'), hex2dec('a6'), hex2dec('b4'), hex2dec('c6'), hex2dec('e8'), hex2dec('dd'), hex2dec('74'), hex2dec('1f'), hex2dec('4b'), hex2dec('bd'), hex2dec('8b'), hex2dec('8a'), ... %C
	hex2dec('70'), hex2dec('3e'), hex2dec('b5'), hex2dec('66'), hex2dec('48'), hex2dec('03'), hex2dec('f6'), hex2dec('0e'), hex2dec('61'), hex2dec('35'), hex2dec('57'), hex2dec('b9'), hex2dec('86'), hex2dec('c1'), hex2dec('1d'), hex2dec('9e'), ... %D
	hex2dec('e1'), hex2dec('f8'), hex2dec('98'), hex2dec('11'), hex2dec('69'), hex2dec('d9'), hex2dec('8e'), hex2dec('94'), hex2dec('9b'), hex2dec('1e'), hex2dec('87'), hex2dec('e9'), hex2dec('ce'), hex2dec('55'), hex2dec('28'), hex2dec('df'), ... %E
	hex2dec('8c'), hex2dec('a1'), hex2dec('89'), hex2dec('0d'), hex2dec('bf'), hex2dec('e6'), hex2dec('42'), hex2dec('68'), hex2dec('41'), hex2dec('99'), hex2dec('2d'), hex2dec('0f'), hex2dec('b0'), hex2dec('54'), hex2dec('bb'), hex2dec('16')  ... %F
];

%% Parameters
NUM_ENC                     = 25000;  
NUM_SAMPLES                 = 10;  %% how many samples need for
SNR                         = 10; %% this value is in dB; so careful. 
POSITION_TO_ADD_POWER_VALUE =  0; %[0 to NUMSAMPLES-1]
KEY_INDEX                   =  15; %% [0 - 15]
ADD_NOISE                   =  0;  %% 0 or 1
FILE_GENERATION             =  1;  %% 0 or 1
CPA_ATTACKS                 =  1;
PLOT_RESULTS                =  1;
KEY=hex2dec(['00'; '01'; '02'; '03'; '04'; '05'; '06'; '07'; '08'; '09'; '0a'; '0b'; '0c'; '0d'; '0e'; 'f0']);
FOLDER_NAME                 = datestr(now,'yyyymmmmdd_HHMMSS');
PT_FILE_FORMAT              = '%02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X, %02X \n';
PT_FILE_NAME                = 'text_in.txt';
WAVE_FILE_NAME              = 'wave.data';
%%% variables
X1=1;
Pt=0;

HWarray=ones(8, NUM_ENC);
M= ones(9, NUM_ENC);


%% generate PTs and Power 

for i=1:NUM_ENC
   
    X1=randi([0,255],1);
    Pt(i) = X1;
    AESFR = bitxor(X1,KEY(KEY_INDEX+1));
    X1SB=sbox(AESFR+1);
    X1SBbin= dec2bin(bitxor(X1SB, 0));
    PowerUnfilt=sum(X1SBbin(:) == '1');
    if (ADD_NOISE == 1)
        P(i) = 8+awgn(PowerUnfilt, SNR, 'measured');   % TODO: change later 
    else
        P(i) = 8+(PowerUnfilt);
    end
    
end

%% Save to file 
if(FILE_GENERATION == 1)
    PtFile   = ones(16, NUM_ENC);
    WaveFile = randi(16, NUM_ENC, NUM_SAMPLES); 
    
    for i=1:NUM_ENC
        PtFile(:, i) = ones(1, 16) * Pt(i);
    end
    PtFile   = PtFile';
    WaveFile(:, POSITION_TO_ADD_POWER_VALUE+1) = P; 
    PtFileStr = compose("%02X", PtFile);
    %% create folder and file write
    [status, msg, msgID] = mkdir(FOLDER_NAME);
    path    = strcat('./', FOLDER_NAME, '/');
    fileID = fopen([path PT_FILE_NAME],'w');
    
    for i=1:NUM_ENC
        for j=1:15 
            fprintf(fileID,'%s, ',PtFileStr(i, j));
        end
        fprintf(fileID,'%s \n',PtFileStr(i, 16));
    end
    fclose(fileID);
    
    fileID = fopen([path WAVE_FILE_NAME],'w');
    fwrite(fileID, WaveFile,'float');
    fclose(fileID);
    
end
    
%% Conduct CPA Attacks
if (CPA_ATTACKS == 1)    
for j=0:255
   
   for i=1:NUM_ENC 
    AESFR = bitxor(Pt(i),j);
    X1SB=sbox(AESFR+1);
    X1SBbin= dec2bin(X1SB);
    HW(i)=sum(X1SBbin(:) == '1');
    temp= dec2bin(X1SB,8);
    HWarray(:,i)= temp-'0';
    M(:,i) = [1,HWarray(:,i)'];
   end
    C= corrcoef(HW,P);
    R(j+1)=abs(C(2));
end

%subplot(1,2,1)
hold on
%h1 = figure(1);
plot(R);
xlim([0 255])
ylim([0 1.1])
[maxVal,maxIDX] = max(R);
str = {strcat('key=',int2str(maxIDX)); strcat( 'r=',num2str(maxVal,4))};
%str='XX';
text(maxIDX+10,maxVal,str)
%str1=strcat('\sigma(P_E)=',num2str(std(PSignal),4));
%text(110,0.38,str1)
scatter(maxIDX, maxVal, 'r*');
xlabel('Key Guess');
ylabel('Corr. Coe. (r)');
hold off
end



