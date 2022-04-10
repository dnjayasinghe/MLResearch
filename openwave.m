%F=dir('*.data');
%filename=(F(F.length-1));

fileID = fopen('2022April09_184011/wave.data');
A = fread(fileID,[20 25000],'float');
plot(A)



