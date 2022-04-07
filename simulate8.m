%%%%remove this
%clear
%snr =-500;
%%%%%%%%%%%%%%5
%%7545

%snr=-1*snr;
for N=1:40

sigma     =3;
numTraces =50;
numSamples=50*N;
lim       =1200;
hexKey    ='4a';
col       =5;
P1Point  =7545;


Sbox=[hex2dec('63') hex2dec('7C') hex2dec('77') hex2dec('7B') hex2dec('F2') hex2dec('6B') hex2dec('6F') hex2dec('C5') hex2dec('30') hex2dec('01') hex2dec('67') hex2dec('2B') hex2dec('FE') hex2dec('D7') hex2dec('AB') hex2dec('76') hex2dec('CA') hex2dec('82') hex2dec('C9') hex2dec('7D') hex2dec('FA') hex2dec('59') hex2dec('47') hex2dec('F0') hex2dec('AD') hex2dec('D4') hex2dec('A2') hex2dec('AF') hex2dec('9C') hex2dec('A4') hex2dec('72') hex2dec('C0')     hex2dec('B7') hex2dec('FD') hex2dec('93') hex2dec('26') hex2dec('36') hex2dec('3F') hex2dec('F7') hex2dec('CC') hex2dec('34') hex2dec('A5') hex2dec('E5') hex2dec('F1') hex2dec('71') hex2dec('D8') hex2dec('31') hex2dec('15')     hex2dec('04') hex2dec('C7') hex2dec('23') hex2dec('C3') hex2dec('18') hex2dec('96') hex2dec('05') hex2dec('9A') hex2dec('07') hex2dec('12') hex2dec('80') hex2dec('E2') hex2dec('EB') hex2dec('27') hex2dec('B2') hex2dec('75')     hex2dec('09') hex2dec('83') hex2dec('2C') hex2dec('1A') hex2dec('1B') hex2dec('6E') hex2dec('5A') hex2dec('A0') hex2dec('52') hex2dec('3B') hex2dec('D6') hex2dec('B3') hex2dec('29') hex2dec('E3') hex2dec('2F') hex2dec('84')    hex2dec('53') hex2dec('D1') hex2dec('00') hex2dec('ED') hex2dec('20') hex2dec('FC') hex2dec('B1') hex2dec('5B') hex2dec('6A') hex2dec('CB') hex2dec('BE') hex2dec('39') hex2dec('4A') hex2dec('4C') hex2dec('58') hex2dec('CF')     hex2dec('D0') hex2dec('EF') hex2dec('AA') hex2dec('FB') hex2dec('43') hex2dec('4D') hex2dec('33') hex2dec('85') hex2dec('45') hex2dec('F9') hex2dec('02') hex2dec('7F') hex2dec('50') hex2dec('3C') hex2dec('9F') hex2dec('A8')     hex2dec('51') hex2dec('A3') hex2dec('40') hex2dec('8F') hex2dec('92') hex2dec('9D') hex2dec('38') hex2dec('F5') hex2dec('BC') hex2dec('B6') hex2dec('DA') hex2dec('21') hex2dec('10') hex2dec('FF') hex2dec('F3') hex2dec('D2')     hex2dec('CD') hex2dec('0C') hex2dec('13') hex2dec('EC') hex2dec('5F') hex2dec('97') hex2dec('44') hex2dec('17') hex2dec('C4') hex2dec('A7') hex2dec('7E') hex2dec('3D') hex2dec('64') hex2dec('5D') hex2dec('19') hex2dec('73')     hex2dec('60') hex2dec('81') hex2dec('4F') hex2dec('DC') hex2dec('22') hex2dec('2A') hex2dec('90') hex2dec('88') hex2dec('46') hex2dec('EE') hex2dec('B8') hex2dec('14') hex2dec('DE') hex2dec('5E') hex2dec('0B') hex2dec('DB')    hex2dec('E0') hex2dec('32') hex2dec('3A') hex2dec('0A') hex2dec('49') hex2dec('06') hex2dec('24') hex2dec('5C') hex2dec('C2') hex2dec('D3') hex2dec('AC') hex2dec('62') hex2dec('91') hex2dec('95') hex2dec('E4') hex2dec('79')     hex2dec('E7') hex2dec('C8') hex2dec('37') hex2dec('6D') hex2dec('8D') hex2dec('D5') hex2dec('4E') hex2dec('A9') hex2dec('6C') hex2dec('56') hex2dec('F4') hex2dec('EA') hex2dec('65') hex2dec('7A') hex2dec('AE') hex2dec('08')     hex2dec('BA') hex2dec('78') hex2dec('25') hex2dec('2E') hex2dec('1C') hex2dec('A6') hex2dec('B4') hex2dec('C6') hex2dec('E8') hex2dec('DD') hex2dec('74') hex2dec('1F') hex2dec('4B') hex2dec('BD') hex2dec('8B') hex2dec('8A')     hex2dec('70') hex2dec('3E') hex2dec('B5') hex2dec('66') hex2dec('48') hex2dec('03') hex2dec('F6') hex2dec('0E') hex2dec('61') hex2dec('35') hex2dec('57') hex2dec('B9') hex2dec('86') hex2dec('C1') hex2dec('1D') hex2dec('9E')     hex2dec('E1') hex2dec('F8') hex2dec('98') hex2dec('11') hex2dec('69') hex2dec('D9') hex2dec('8E') hex2dec('94') hex2dec('9B') hex2dec('1E') hex2dec('87') hex2dec('E9') hex2dec('CE') hex2dec('55') hex2dec('28') hex2dec('DF')     hex2dec('8C') hex2dec('A1') hex2dec('89') hex2dec('0D') hex2dec('BF') hex2dec('E6') hex2dec('42') hex2dec('68') hex2dec('41') hex2dec('99') hex2dec('2D') hex2dec('0F') hex2dec('B0') hex2dec('54') hex2dec('BB') hex2dec('16')];
SboxInv=[hex2dec('52') hex2dec('9') hex2dec('6A') hex2dec('D5') hex2dec('30') hex2dec('36') hex2dec('A5') hex2dec('38') hex2dec('BF') hex2dec('40') hex2dec('A3') hex2dec('9E') hex2dec('81') hex2dec('F3') hex2dec('D7') hex2dec('FB') hex2dec('7C') hex2dec('E3') hex2dec('39') hex2dec('82') hex2dec('9B') hex2dec('2F') hex2dec('FF') hex2dec('87') hex2dec('34') hex2dec('8E') hex2dec('43') hex2dec('44') hex2dec('C4') hex2dec('DE') hex2dec('E9') hex2dec('CB') hex2dec('54') hex2dec('7B') hex2dec('94') hex2dec('32') hex2dec('A6') hex2dec('C2') hex2dec('23') hex2dec('3D') hex2dec('EE') hex2dec('4C') hex2dec('95') hex2dec('B') hex2dec('42') hex2dec('FA') hex2dec('C3') hex2dec('4E') hex2dec('8') hex2dec('2E') hex2dec('A1') hex2dec('66') hex2dec('28') hex2dec('D9') hex2dec('24') hex2dec('B2') hex2dec('76') hex2dec('5B') hex2dec('A2') hex2dec('49') hex2dec('6D') hex2dec('8B') hex2dec('D1') hex2dec('25') hex2dec('72') hex2dec('F8') hex2dec('F6') hex2dec('64') hex2dec('86') hex2dec('68') hex2dec('98') hex2dec('16') hex2dec('D4') hex2dec('A4') hex2dec('5C') hex2dec('CC') hex2dec('5D') hex2dec('65') hex2dec('B6') hex2dec('92') hex2dec('6C') hex2dec('70') hex2dec('48') hex2dec('50') hex2dec('FD') hex2dec('ED') hex2dec('B9') hex2dec('DA') hex2dec('5E') hex2dec('15') hex2dec('46') hex2dec('57') hex2dec('A7') hex2dec('8D') hex2dec('9D') hex2dec('84') hex2dec('90') hex2dec('D8') hex2dec('AB') hex2dec('0') hex2dec('8C') hex2dec('BC') hex2dec('D3') hex2dec('A') hex2dec('F7') hex2dec('E4') hex2dec('58') hex2dec('5') hex2dec('B8') hex2dec('B3') hex2dec('45') hex2dec('6') hex2dec('D0') hex2dec('2C') hex2dec('1E') hex2dec('8F') hex2dec('CA') hex2dec('3F') hex2dec('F') hex2dec('2') hex2dec('C1') hex2dec('AF') hex2dec('BD') hex2dec('3') hex2dec('1') hex2dec('13') hex2dec('8A') hex2dec('6B') hex2dec('3A') hex2dec('91') hex2dec('11') hex2dec('41') hex2dec('4F') hex2dec('67') hex2dec('DC') hex2dec('EA') hex2dec('97') hex2dec('F2') hex2dec('CF') hex2dec('CE') hex2dec('F0') hex2dec('B4') hex2dec('E6') hex2dec('73') hex2dec('96') hex2dec('AC') hex2dec('74') hex2dec('22') hex2dec('E7') hex2dec('AD') hex2dec('35') hex2dec('85') hex2dec('E2') hex2dec('F9') hex2dec('37') hex2dec('E8') hex2dec('1C') hex2dec('75') hex2dec('DF') hex2dec('6E') hex2dec('47') hex2dec('F1') hex2dec('1A') hex2dec('71') hex2dec('1D') hex2dec('29') hex2dec('C5') hex2dec('89') hex2dec('6F') hex2dec('B7') hex2dec('62') hex2dec('E') hex2dec('AA') hex2dec('18') hex2dec('BE') hex2dec('1B') hex2dec('FC') hex2dec('56') hex2dec('3E') hex2dec('4B') hex2dec('C6') hex2dec('D2') hex2dec('79') hex2dec('20') hex2dec('9A') hex2dec('DB') hex2dec('C0') hex2dec('FE') hex2dec('78') hex2dec('CD') hex2dec('5A') hex2dec('F4') hex2dec('1F') hex2dec('DD') hex2dec('A8') hex2dec('33') hex2dec('88') hex2dec('7') hex2dec('C7') hex2dec('31') hex2dec('B1') hex2dec('12') hex2dec('10') hex2dec('59') hex2dec('27') hex2dec('80') hex2dec('EC') hex2dec('5F') hex2dec('60') hex2dec('51') hex2dec('7F') hex2dec('A9') hex2dec('19') hex2dec('B5') hex2dec('4A') hex2dec('D') hex2dec('2D') hex2dec('E5') hex2dec('7A') hex2dec('9F') hex2dec('93') hex2dec('C9') hex2dec('9C') hex2dec('EF') hex2dec('A0') hex2dec('E0') hex2dec('3B') hex2dec('4D') hex2dec('AE') hex2dec('2A') hex2dec('F5') hex2dec('B0') hex2dec('C8') hex2dec('EB') hex2dec('BB') hex2dec('3C') hex2dec('83') hex2dec('53') hex2dec('99') hex2dec('61') hex2dec('17') hex2dec('2B') hex2dec('4') hex2dec('7E') hex2dec('BA') hex2dec('77') hex2dec('D6') hex2dec('26') hex2dec('E1') hex2dec('69') hex2dec('14') hex2dec('63') hex2dec('55') hex2dec('21') hex2dec('C') hex2dec('7D')];
mk=['o','+','*','.','x','s','d','^','v','<','>','p','h'];
fileID = fopen('text-out.txt','r');
formatSpec = ' %s';
A = fscanf(fileID,formatSpec);

for z=1:49900
    if(exist('extractbetween') >0)
        pt(z+1)=(extractBetween(A,32*z+1,32*z+2));
    else
	    pt(z+1,:)=A(32*z+1:32*z+2);
    end
end

fileID = fopen('wave-1.bin');
key      =hex2dec(hexKey);
coeOpti  =zeros(lim,1);
coeOptiPow2=zeros(lim,1);

coeEst1   =zeros(lim,1);
coeEst11  =zeros(lim,1);
coeEst12  =zeros(lim,1);
coeEY1    =zeros(lim,1);
coe1      =zeros(lim,1);


coeX2     =zeros(lim,1);
coeY2     =zeros(lim,1);
coeP1Y1   =zeros(lim,1);

coeEst2  =zeros(lim,1);
coeEst21 =zeros(lim,1);
coeEst22 =zeros(lim,1);
coeEst23 =zeros(lim,1);
coeEst24 =zeros(lim,1);
coeEst25 =zeros(lim,1);
coe2     =zeros(lim,1);

coeEst3  =zeros(lim,1);
coe3     =zeros(lim,1);
coe31    =zeros(lim,1);
coe32    =zeros(lim,1);
coep1pow3sig3   =zeros(lim,1);
coeX3sig3       =zeros(lim,1);
coeY3sig3       =zeros(lim,1);
coeP1pow2Y1sig3 =zeros(lim,1);
coeX2P1sig3     =zeros(lim,1);
coeY2P1sig3     =zeros(lim,1);
coeY1X2sig3     =zeros(lim,1);


coe4           =zeros(lim,1);
coeP1pow4sig4  =zeros(lim,1);

coeEst4        =zeros(lim,1);
coeEst41        =zeros(lim,1);
coeEst42        =zeros(lim,1);

coeY1X2sig4    = zeros(lim,1);
coeX4sig4      = zeros(lim,1);
coeP1pow3Y1sig4= zeros(lim,1);
coeP1X3sig4    = zeros(lim,1);
coeX3Y1sig4     = zeros(lim,1);
coeP1pow2Y2sig4= zeros(lim,1);
coeP1pow2X2sig4= zeros(lim,1);
coeP1X2Y1sig4  = zeros(lim,1);
coeX2Y2sig4    = zeros(lim,1);
coeP1Y3sig4    = zeros(lim,1);
coeY4sig4      = zeros(lim,1);

coePow2sig3  =zeros(lim,1);
coePow1sig3  =zeros(lim,1);

Xaxis    =zeros(lim,1);

varmom1      = zeros(lim,1);
varmom2      = zeros(lim,1);
varmom3      = zeros(lim,1);
varmom4      = zeros(lim,1);


varmom11      = zeros(lim,1);
varmom21      = zeros(lim,1);
varmom31      = zeros(lim,1);
varmom41      = zeros(lim,1);

varmom12      = zeros(lim,1);
varmom22      = zeros(lim,1);
varmom32      = zeros(lim,1);
varmom42      = zeros(lim,1);


H        =zeros(numTraces*lim,1);
Pow      =zeros(numTraces*lim,1);


meanAll  =zeros(numTraces*lim,1);

SkewAll  =zeros(numTraces*lim,1);
varAll   =zeros(numTraces*lim,1);
KurtoAll =zeros(numTraces*lim,1);
P1   =zeros(numTraces*lim,1);

varP1    =zeros(numTraces*lim,1);
P1pow2   =zeros(numTraces*lim,1);
P1pow3   =zeros(numTraces*lim,1);

P1pow3sig1   =zeros(numTraces*lim,1);
P1pow3sig2   =zeros(numTraces*lim,1);
P1pow3sig3   =zeros(numTraces*lim,1);

P1pow1sig4   =zeros(numTraces*lim,1);
P1pow2sig4   =zeros(numTraces*lim,1);
P1pow3sig4   =zeros(numTraces*lim,1);
P1pow4sig4   =zeros(numTraces*lim,1);

stdd     =zeros(numTraces*lim,1);

Y1       =zeros(numTraces*lim,1);
Y2       =zeros(numTraces*lim,1);
Y3       =zeros(numTraces*lim,1);
Y4       =zeros(numTraces*lim,1);

X2       =zeros(numTraces*lim,1);
X3       =zeros(numTraces*lim,1);
X4       =zeros(numTraces*lim,1);

Y1X2    =zeros(numTraces*lim,1);

P1Y1       =zeros(numTraces*lim,1);

X3sig3       =zeros(numTraces*lim,1);
Y3sig3       =zeros(numTraces*lim,1);
P1pow2Y1sig3 =zeros(numTraces*lim,1);
X2P1sig3     =zeros(numTraces*lim,1);
Y2P1sig3     =zeros(numTraces*lim,1);
Y1X2sig3     =zeros(numTraces*lim,1);


Y1X2sig4    = zeros(numTraces*lim,1);
X4sig4      = zeros(numTraces*lim,1);
P1pow3Y1sig4= zeros(numTraces*lim,1);
P1X3sig4    = zeros(numTraces*lim,1); 
X3Y1sig4     = zeros(numTraces*lim,1);
P1pow2Y2sig4= zeros(numTraces*lim,1);
P1pow2X2sig4= zeros(numTraces*lim,1);
P1X2Y1sig4  = zeros(numTraces*lim,1);
X2Y2sig     = zeros(numTraces*lim,1);
P1Y3sig     = zeros(numTraces*lim,1);
Y4sig4      = zeros(numTraces*lim,1);
P1Y3sig4    = zeros(numTraces*lim,1);
X2Y2sig4    = zeros(numTraces*lim,1);

%%% CPA attacks
coeAttack1     =zeros(lim,256);
coeAttack2     =zeros(lim,256);
coeAttack3     =zeros(lim,256);
coeAttack4     =zeros(lim,256);
Har    = zeros(numTraces*lim,256);


% loop
for j=1:lim

for i=(numTraces*(j-1)+1):numTraces*j
%X=sigma*randn(numSamples,1)+randi(3);
X = fread(fileID,[50000 1],'float');
X=X/256;
% trim
%pt=randi(255);
Pow(i) = X(P1Point);
if(P1Point-(numSamples/2)>0)
    X=X(P1Point-(numSamples/2): P1Point+(numSamples/2));
else
    X=X(1: P1Point+(numSamples-P1Point));
end   
X1=X;
X=awgn(X1,snr,'measured');
	if(exist('extractbetween') >0)
		p=SboxInv(bitxor(hex2dec(pt(i)),key)+1);
		P1=hammingW(bitxor(p,hex2dec(pt(i))));
	else
		p=SboxInv(bitxor(hex2dec(pt(i,:)),key)+1);
		P1=hammingW(bitxor(p,hex2dec(pt(i,:))));
	end
%X=X+ 40;


H(i)  = P1;

%save mean
meanAll(i)= mean(X);
P1A(i) = Pow(i);

varAll(i)= var(X);

P1pow2(i)      = Pow(i) * Pow(i);
P1pow3sig3(i)  = Pow(i) * Pow(i) * Pow(i) / (std(X) * std(X)*std(X));
%P1pow2sig3(i)  = X(1) * X(1)        / (std(X) * std(X)*std(X));
%P1pow1sig3(i)  = X(1)               / (std(X) * std(X)*std(X));


P1pow1sig4(i)  = Pow(i)                      / (std(X) * std(X)* std(X) * std(X));
P1pow2sig4(i)  = Pow(i) * Pow(i)               / (std(X) * std(X)* std(X) * std(X));
P1pow3sig4(i)  = Pow(i) * Pow(i) * Pow(i)        / (std(X) * std(X)* std(X) * std(X));
P1pow4sig4(i)  = Pow(i) * Pow(i) * Pow(i) * Pow(i) / (std(X) * std(X)* std(X) * std(X));

Y1(i) = sum(X) - Pow(i);
Y2(i) = Y1(i) * Y1(i);
Y3(i) = Y1(i) * Y1(i) * Y1(i);
Y4(i) = Y1(i) * Y1(i) * Y1(i) * Y1(i);

X1(i)  = Y1(i);
X2(i) = sum(X.^2) - Pow(i)* Pow(i);
X3(i) = sum(X.^3) - Pow(i)* Pow(i) *Pow(i);
X4(i) = sum(X.^4) - Pow(i)* Pow(i) *Pow(i) *Pow(i);

P1Y1(i)  = Pow(i)*Y1(i);

%%%% skew
SkewAll(i)      = skewness(X);
stdd(i)         = std(X);
X3sig3(i)       = X3(i)/ (std(X) * std(X)*std(X));
Y3sig3(i)       = Y3(i)/ (std(X) * std(X)*std(X));
P1pow2Y1sig3(i) = Pow(i) * Pow(i) * Y1(i) / (std(X) * std(X)*std(X));
X2P1sig3(i)     = X2(i)* Pow(i) /(std(X) * std(X)*std(X));
Y2P1sig3(i)     = Y2(i)* Pow(i) /(std(X) * std(X)*std(X));
Y1X2sig3(i)     = Y1(i)* X2(i)/(std(X) * std(X)*std(X));

%%%% kurtosis
KurtoAll(i)    = kurtosis(X);
Y1X2sig4(i)    = Y1(i) * X2(i) / (std(X) * std(X) * std(X) * std(X));;
X4sig4(i)      = X4(i) / (std(X) * std(X) * std(X) * std(X));
P1pow3Y1sig4(i)= Pow(i) * Pow(i) * Pow(i) * Y1(i) / (std(X) * std(X) * std(X) * std(X)); 
P1X3sig4(i)    = Pow(i) * X3(i) / (std(X) * std(X) * std(X) * std(X)); 
X3Y1sig4(i)    = X3(i) * Y1(i) / (std(X) * std(X) * std(X) * std(X)); 
P1pow2Y2sig4(i)= Pow(i) * Pow(i) * Y2(i) / (std(X) * std(X) * std(X) * std(X));
P1pow2X2sig4(i)= Pow(i) * Pow(i) * X2(i) / (std(X) * std(X) * std(X) * std(X));
P1X2Y1sig4(i)  = Pow(i) *  X2(i) * Y1(i) / (std(X) * std(X) * std(X) * std(X));
X2Y2sig4(i)    = X2(i) * Y2(i) / (std(X) * std(X) * std(X) * std(X));
P1Y3sig4(i)    = Pow(i) * Y3(i)  / (std(X) * std(X) * std(X) * std(X));
Y4sig4(i)      = Y4(i)  / (std(X) * std(X) * std(X) * std(X));


%%% calculate H for different 
for k=0:255
%Har(i,k+1)= hammingW(Sbox(bitxor(pt,k)+1));

p=SboxInv(bitxor(hex2dec(pt(i)),k)+1);

Har(i,k+1)=hammingW(bitxor(p,hex2dec(pt(i))));
end

end



Xaxis(j)=j;


[r p]=corrcoef(meanAll(1:numTraces*j),H(1:numTraces*j)); 
coe1(j)=r(2);


%%%%%%%%%% var

[r p]=corrcoef(varAll(1:numTraces*j),H(1:numTraces*j)); 
coe2(j)=r(2);


%%%%%% skew


[r p]=corrcoef(SkewAll(1:numTraces*j),H(1:numTraces*j)); 
coe3(j)=r(2);


[r p]=corrcoef(KurtoAll(1:numTraces*j),H(1:numTraces*j)); 
coe4(j)=r(2);



Xaxis(j)=j;

[r p]=corrcoef(Pow(1:numTraces*j),H(1:numTraces*j));
coeOpti(j)=r(2);

[r p]=corrcoef(Y1(1:numTraces*j),H(1:numTraces*j));
coeEY1(j)=r(2);

%%%% mean
coeEst1(j) = ((1/numSamples) * (coeOpti(j)) * (sqrt(var(P1A(1:numTraces*j)))) / (sqrt(var(meanAll(1:numTraces*j))))) + ((1/numSamples) * (coeEY1(j)) * (sqrt(var(Y1(1:numTraces*j)))) / (sqrt(var(meanAll(1:numTraces*j))))) ;
coeEst11(j) = ((1/numSamples) * (coeOpti(j)) * (sqrt(var(P1A(1:numTraces*j)))) / (sqrt(var(meanAll(1:numTraces*j)))));
coeEst12(j) = ((1/numSamples) * (coeEY1(j)) * (sqrt(var(Y1(1:numTraces*j)))) / (sqrt(var(meanAll(1:numTraces*j))))) ;
[r p]=corrcoef(meanAll(1:numTraces*j),H(1:numTraces*j)); 
coe1(j)=r(2);

varmom1(j)= (sqrt(var(meanAll(1:numTraces*j))));
varmom11(j)= (sqrt(var(P1A(1:numTraces*j))));
varmom12(j)= (sqrt(var(Y1(1:numTraces*j))));

%%%%%%%%%% var
[r p]=corrcoef(P1pow2(1:numTraces*j),H(1:numTraces*j));
coeOptiPow2(j)=r(2);

[r p]=corrcoef(X2(1:numTraces*j),H(1:numTraces*j));
coeX2(j)=r(2);

[r p]=corrcoef(P1Y1(1:numTraces*j),H(1:numTraces*j));
coeP1Y1(j)=r(2);

[r p]=corrcoef(Y2(1:numTraces*j),H(1:numTraces*j));
coeY2(j)=r(2);

[r p]=corrcoef(varAll(1:numTraces*j),H(1:numTraces*j)); 
coe2(j)=r(2);


AA1= ((1/numSamples) *                  (coeOptiPow2(j)) * (sqrt(var(P1pow2(1:numTraces*j)))) / (sqrt(var(varAll(1:numTraces*j))))) ;
AA2= ((1/numSamples) *                  (coeX2(j)) *       (sqrt(var(X2(1:numTraces*j))))    / (sqrt(var(varAll(1:numTraces*j))))) ;
AA3= ((1/numSamples) *  (1/numSamples) *(coeOptiPow2(j)) * (sqrt(var(P1pow2(1:numTraces*j)))) / (sqrt(var(varAll(1:numTraces*j))))) ;
AA4= ((1/numSamples) * (1/numSamples) * (coeP1Y1(j)) *       (sqrt(var(P1Y1(1:numTraces*j))))    / (sqrt(var(varAll(1:numTraces*j))))) ;
AA5= ((1/numSamples) * (1/numSamples) * (coeY2(j)) *       (sqrt(var(Y2(1:numTraces*j))))    / (sqrt(var(varAll(1:numTraces*j))))) ;

coeEst2(j) = AA1 + AA2 - AA3 -2*AA4 - AA5;
coeEst21(j) = AA1;
coeEst22(j) = AA2;
coeEst23(j) = AA3;
coeEst24(j) = AA4;
coeEst25(j) = AA5;

varmom2(j)= (sqrt(var(varAll(1:numTraces*j))));
varmom21(j)= (sqrt(var(P1pow2(1:numTraces*j))));
varmom22(j)= (sqrt(var(X2(1:numTraces*j))));
%%%%%% skew

[r p]=corrcoef(P1pow3sig3(1:numTraces*j),H(1:numTraces*j));
coep1pow3sig3(j)=r(2);

[r p]=corrcoef(X3sig3(1:numTraces*j),H(1:numTraces*j));
coeX3sig3(j)=r(2);

[r p]=corrcoef(Y3sig3(1:numTraces*j),H(1:numTraces*j));
coeY3sig3(j)=r(2);

[r p]=corrcoef(P1pow2Y1sig3(1:numTraces*j),H(1:numTraces*j));
coeP1pow2Y1sig3(j)=r(2);

[r p]=corrcoef(X2P1sig3(1:numTraces*j),H(1:numTraces*j));
coeX2P1sig3(j)=r(2);

[r p]=corrcoef(Y2P1sig3(1:numTraces*j),H(1:numTraces*j));
coeY2P1sig3(j)=r(2);

[r p]=corrcoef(Y1X2sig3(1:numTraces*j),H(1:numTraces*j));
coeY1X2sig3(j)=r(2);


AA1= ((1/numSamples) *                  (coep1pow3sig3(j)) * (sqrt(var(P1pow3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA2= ((1/numSamples) *                  (coeX3sig3(j)) *         (sqrt(var(X3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA3= ((1/numSamples) * (1/numSamples)*  (coep1pow3sig3(j)) * (sqrt(var(P1pow3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA4= ((1/numSamples) * (1/numSamples)*  (coeP1pow2Y1sig3(j)) * (sqrt(var(P1pow2Y1sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA5= ((1/numSamples) * (1/numSamples)*  (coeX2P1sig3(j)) * (sqrt(var(X2P1sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
%AA6= ((1/numSamples) *                  (coeX3sig3(j)) *         (sqrt(var(X3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA6= ((1/numSamples) * (1/numSamples)*  (coeY1X2sig3(j)) * (sqrt(var(Y1X2sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA7= ((1/numSamples) * (1/numSamples)* (1/numSamples)*  (coep1pow3sig3(j)) * (sqrt(var(P1pow3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA8= ((1/numSamples) * (1/numSamples)* (1/numSamples)*   (coeY2P1sig3(j)) * (sqrt(var(Y2P1sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA9=((1/numSamples) * (1/numSamples)* (1/numSamples)*  (coeP1pow2Y1sig3(j)) * (sqrt(var(P1pow2Y1sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;
AA10=((1/numSamples) * (1/numSamples)* (1/numSamples)* (coeY3sig3(j)) *         (sqrt(var(Y3sig3(1:numTraces*j)))) / (sqrt(var(SkewAll(1:numTraces*j))))) ;

coeEst3(j) = AA1 + AA2 - 3*AA3 -3*AA4 - 3* AA5 - 3*AA6 + 2*AA7 +6*AA8 +6*AA9 +2*AA10;
coeEst31(j) = AA1;
coeEst32(j) = AA2;
coeEst33(j) = AA3;
coeEst34(j) = AA4;
coeEst35(j) = AA5;
coeEst36(j) = AA6;
coeEst37(j) = AA7;
coeEst38(j) = AA8;
coeEst39(j) = AA9;
coeEst310(j) = AA10;

[r p]=corrcoef(SkewAll(1:numTraces*j),H(1:numTraces*j)); 
coe3(j)=r(2);

varmom3(j)= (sqrt(var(SkewAll(1:numTraces*j))));
varmom31(j)= (sqrt(var(P1pow3sig3(1:numTraces*j))));
varmom32(j)= (sqrt(var(X3sig3(1:numTraces*j))));
%%%% kurto

[r p]=corrcoef(P1pow4sig4(1:numTraces*j),H(1:numTraces*j));
coeP1pow4sig4(j)  = r(2);

[r p]=corrcoef(Y1X2sig4(1:numTraces*j),H(1:numTraces*j));
coeY1X2sig4(j) = r(2);

[r p]=corrcoef(X4sig4(1:numTraces*j),H(1:numTraces*j));
coeX4sig4(j)      = r(2);

[r p]=corrcoef(P1pow3Y1sig4(1:numTraces*j),H(1:numTraces*j));
coeP1pow3Y1sig4(j)= r(2);

[r p]=corrcoef(P1X3sig4(1:numTraces*j),H(1:numTraces*j));
coeP1X3sig4(j)    = r(2);

[r p]=corrcoef(X3Y1sig4(1:numTraces*j),H(1:numTraces*j));
coeX3Y1sig4(j)     = r(2);

[r p]=corrcoef(P1pow2Y2sig4(1:numTraces*j),H(1:numTraces*j));
coeP1pow2Y2sig4(j)= r(2);

[r p]=corrcoef(P1pow2X2sig4(1:numTraces*j),H(1:numTraces*j));
coeP1pow2X2sig4(j)= r(2);

[r p]=corrcoef(P1X2Y1sig4(1:numTraces*j),H(1:numTraces*j));
coeP1X2Y1sig4(j)  = r(2);

[r p]=corrcoef(X2Y2sig4(1:numTraces*j),H(1:numTraces*j));
coeX2Y2sig4(j)    = r(2);

[r p]=corrcoef(P1Y3sig4(1:numTraces*j),H(1:numTraces*j));
coeP1Y3sig4(j)    = r(2);

[r p]=corrcoef(Y4sig4(1:numTraces*j),H(1:numTraces*j));
coeY4sig4(j)      = r(2);

AA1= ((1/numSamples) *                  (coeP1pow4sig4(j)) * (sqrt(var(P1pow4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA2= ((1/numSamples) *                  (coeX4sig4(j))     * (sqrt(var(X4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;

AA3= ((1/numSamples) * (1/numSamples)*  (coeP1pow4sig4(j)) * (sqrt(var(P1pow4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA4= ((1/numSamples) * (1/numSamples)*  (coeP1pow3Y1sig4(j)) * (sqrt(var(P1pow3Y1sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA5= ((1/numSamples) * (1/numSamples) * (coeP1X3sig4(j)) * (sqrt(var(P1X3sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA6= ((1/numSamples) * (1/numSamples) * (coeX3Y1sig4(j)) * (sqrt(var(X3Y1sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;

AA7= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow4sig4(j)) * (sqrt(var(P1pow4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA8= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow3Y1sig4(j)) * (sqrt(var(P1pow3Y1sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA9= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow2Y2sig4(j)) * (sqrt(var(P1pow2Y2sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA10= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow2X2sig4(j)) * (sqrt(var(P1pow2X2sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA11=((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1X2Y1sig4(j)) * (sqrt(var(P1X2Y1sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA12=((1/numSamples) * (1/numSamples) * (1/numSamples) * (coeX2Y2sig4(j)) * (sqrt(var(X2Y2sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;

AA13= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow4sig4(j)) * (sqrt(var(P1pow4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA14= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow3Y1sig4(j)) * (sqrt(var(P1pow3Y1sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA15= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1pow2Y2sig4(j)) * (sqrt(var(P1pow2Y2sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA16= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (1/numSamples) * (coeP1Y3sig4(j)) * (sqrt(var(P1Y3sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;
AA17= ((1/numSamples) * (1/numSamples) * (1/numSamples) * (1/numSamples) * (coeY4sig4(j)) * (sqrt(var(Y4sig4(1:numTraces*j)))) / (sqrt(var(KurtoAll(1:numTraces*j))))) ;

coeEst4(j) = AA1 + AA2 - 4*AA3 -4*AA4 - 4* AA5 - 4*AA6 + 6*AA7 +12*AA8 +6*AA9 +6*AA10 +12*AA11 +6*AA12 -3*AA13 -12*AA14 -18*AA15 -12*AA16  -3*AA17;
coeEst41(j) = AA1;
coeEst42(j) = AA2; 
coeEst43(j) = AA3; 
coeEst44(j) = AA4; 
coeEst45(j) = AA5; 
coeEst46(j) = AA6; 
coeEst47(j) = AA7; 
coeEst48(j) = AA8; 
coeEst49(j) = AA9; 
coeEst410(j) = AA10; 
coeEst411(j) = AA11; 
coeEst412(j) = AA12; 
coeEst413(j) = AA13; 
coeEst414(j) = AA14; 
coeEst415(j) = AA15; 
coeEst416(j) = AA16; 
coeEst417(j) = AA17; 

[r p]=corrcoef(KurtoAll(1:numTraces*j),H(1:numTraces*j)); 
coe4(j)=r(2);

varmom4(j)= (sqrt(var(KurtoAll(1:numTraces*j))));
varmom41(j)= (sqrt(var(P1pow4sig4(1:numTraces*j))));
varmom42(j)= (sqrt(var(X4sig4(1:numTraces*j))));

for k=0:255
   
     [r p]=corrcoef(meanAll(1:numTraces*j),Har(1:numTraces*j,k+1)); 
    coeAttack1(j,k+1) =r(2);
    
     [r p]=corrcoef(varAll(1:numTraces*j),Har(1:numTraces*j,k+1)); 
    coeAttack2(j,k+1) =r(2);
    
     [r p]=corrcoef(SkewAll(1:numTraces*j),Har(1:numTraces*j,k+1)); 
    coeAttack3(j,k+1) =r(2);
    
    [r p]=corrcoef(KurtoAll(1:numTraces*j),Har(1:numTraces*j,k+1)); 
    coeAttack4(j,k+1) =r(2);

end


end




%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(col,2,1)
title('Optimal');
hold on
plot(Xaxis, coeOpti,'Marker',mk(1),'MarkerSize',10,'DisplayName','optimal','LineWidth',2)
plot(Xaxis, coeOptiPow2,'Marker',mk(2),'MarkerSize',10,'DisplayName','optimal Pow2','LineWidth',2)
plot(Xaxis, coep1pow3sig3,'Marker',mk(3),'MarkerSize',10,'DisplayName','optimal Pow3/sig3','LineWidth',2)
plot(Xaxis, coeP1pow4sig4,'Marker',mk(4),'MarkerSize',10,'DisplayName','optimal Pow4/sig4','LineWidth',2)
hold off
xlim([Xaxis(1) Xaxis(lim)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(col,2,2)
title('estimate');
hold on
plot(Xaxis, varmom1,'Marker',mk(1),'MarkerSize',10,'DisplayName','var 1st mom','LineWidth',2)
plot(Xaxis, varmom2,'Marker',mk(2),'MarkerSize',10,'DisplayName','var 2nd mom','LineWidth',2)
plot(Xaxis, varmom3,'Marker',mk(3),'MarkerSize',10,'DisplayName','var 3rd mom','LineWidth',2)
plot(Xaxis, varmom4,'Marker',mk(4),'MarkerSize',10,'DisplayName','var 4th mom','LineWidth',2)
hold off
xlim([Xaxis(1) Xaxis(lim)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(col,2,3)
plot(Xaxis, coeEst1,'Marker',mk(2),'MarkerSize',10,'DisplayName','Estimation Mean','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Mean Estimation');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(col,2,4)
hold on
plot(Xaxis, coeEst1,'Marker',mk(2),'MarkerSize',10,'DisplayName','Mean Estimation ','LineWidth',2)
plot(Xaxis, coe1,'Marker',mk(3),'MarkerSize',10,'DisplayName','Mean Preprocessing','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Mean Preprocess');
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(col,2,5)
hold on
plot(Xaxis, coeEst2,'Marker',mk(3),'MarkerSize',10,'DisplayName','Var Estimation','LineWidth',2)
%plot(Xaxis, coeEst21,'Marker',mk(4),'MarkerSize',10,'DisplayName','Estimation 1','LineWidth',2)
%plot(Xaxis, coeEst22,'Marker',mk(5),'MarkerSize',10,'DisplayName','Estimation 2','LineWidth',2)
%plot(Xaxis, coeEst23,'Marker',mk(6),'MarkerSize',10,'DisplayName','Estimation 3','LineWidth',2)
hold
xlim([Xaxis(1) Xaxis(lim)])
title('Var Estimation');
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(col,2,6)
hold on
plot(Xaxis, coeEst2,'Marker',mk(2),'MarkerSize',10,'DisplayName','Var Estimation','LineWidth',2)
plot(Xaxis, coe2,'Marker',mk(3),'MarkerSize',10,'DisplayName','Var Preprocessing','LineWidth',2)

xlim([Xaxis(1) Xaxis(lim)])
title('Var Preprocess');
hold off


%%%%% Skewness   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


subplot(col,2,7)
hold on
%plot(Xaxis, coeEst31,'Marker',mk(4),'MarkerSize',10,'DisplayName','Estimation 1','LineWidth',2)
%plot(Xaxis, coeEst32,'Marker',mk(5),'MarkerSize',10,'DisplayName','Estimation 2','LineWidth',2)
%plot(Xaxis, coeEst33,'Marker',mk(6),'MarkerSize',10,'DisplayName','Estimation 3','LineWidth',2)
%plot(Xaxis, coeEst34,'Marker',mk(7),'MarkerSize',10,'DisplayName','Estimation 4','LineWidth',2)
%plot(Xaxis, coeEst35,'Marker',mk(8),'MarkerSize',10,'DisplayName','Estimation 5','LineWidth',2)

plot(Xaxis, coeEst3,'Marker',mk(3),'MarkerSize',10,'DisplayName','Skew Estimation','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Skew Estimation');
hold off


subplot(col,2,8)
hold on
plot(Xaxis, coeEst3,'Marker',mk(2),'MarkerSize',10,'DisplayName','Skew Estimation','LineWidth',2)
plot(Xaxis, coe3,'Marker',mk(3),'MarkerSize',10,'DisplayName','Skew Preprocessing','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Skew Preprocess');
hold off

%%%Kurtosis  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(col,2,9)
hold on
%plot(Xaxis, coeEst41,'Marker',mk(4),'MarkerSize',10,'DisplayName','Estimation 1','LineWidth',2)

%plot(Xaxis, coeEst42,'Marker',mk(5),'MarkerSize',10,'DisplayName','Estimation 2','LineWidth',2)
%plot(Xaxis, coeEst43,'Marker',mk(6),'MarkerSize',10,'DisplayName','Estimation 3','LineWidth',2)
%plot(Xaxis, coeEst44,'Marker',mk(7),'MarkerSize',10,'DisplayName','Estimation 4','LineWidth',2)
%plot(Xaxis, coeEst45,'Marker',mk(8),'MarkerSize',10,'DisplayName','Estimation 5','LineWidth',2)
plot(Xaxis, coeEst4,'Marker',mk(3),'MarkerSize',10,'DisplayName','Skew Estimation','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Skew Estimation');
hold off


subplot(col,2,10)
hold on
%plot(Xaxis, (coeEst4),'Marker',mk(3),'MarkerSize',10,'DisplayName','Kurtosis  Estimation','LineWidth',2)
plot(Xaxis, (coeEst4),'Marker',mk(2),'MarkerSize',10,'DisplayName','Kurtosis  Estimation','LineWidth',2)
plot(Xaxis, coe4,'Marker',mk(3),'MarkerSize',10,'DisplayName','Kurtosis Preprocessing','LineWidth',2)
xlim([Xaxis(1) Xaxis(lim)])
title('Kurtosis preprocess');
hold off

%savefig('test1.fig')
%save('test1.mat')


s0 = strcat('figure-snr-',num2str(snr),'-numSamples',int2str(numSamples));
s0 = strcat(s0,'.fig');
savefig(s0);


s1 = strcat('data-snr-',num2str(snr),'-numSamples',int2str(numSamples));
s1 = strcat(s1,'.mat');
save(s1);

close
%%%% plot cpa attacks

subplot(2,2,1)
hold
for k=0:255

plot(coeAttack1(:,k+1))

end
plot(coeAttack1(:,key+1),'-ko','LineWidth',2,'MarkerFaceColor',[.49 1 .63])
hold

subplot(2,2,2)
hold
for k=0:255

plot(coeAttack2(:,k+1))

end
plot(coeAttack2(:,key+1),'-ko','LineWidth',2,'MarkerFaceColor',[.49 1 .63])
hold

subplot(2,2,3)
hold
for k=0:255

plot(coeAttack3(:,k+1))

end
plot(coeAttack3(:,key+1),'-ko','LineWidth',2,'MarkerFaceColor',[.49 1 .63])
hold


subplot(2,2,4)
hold
for k=0:255

plot(coeAttack4(:,k+1))

end
plot(coeAttack4(:,key+1),'-ko','LineWidth',2,'MarkerFaceColor',[.49 1 .63])
hold

s0 = strcat('figure-attack-snr',num2str(snr),'-numSamples',int2str(numSamples));
s0 = strcat(s0,'.fig');
savefig(s0);
close

end