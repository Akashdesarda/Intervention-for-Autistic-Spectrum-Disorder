main = readfis('ASD_MIX.fis')
vr = readfis('ASD_Verbal.fis')
lr = readfis('ASD_Logic.fis')
er = readfis('ASD_Emotional.fis')
or = readfis('ASD_Object.fis')
sr = readfis('ASD_Social.fis')

R = xlsread("ExceltoMatlab.xlsx","Sheet1","A1:M1")
T = table(R)

v1 = T.R(1,1)
v2 = T.R(1,2)
outv = evalfis([v1 v2],vr);
disp(['Output from Verbal Test is:',num2str(outv)])

l1 = T.R(1,3)
l2 = T.R(1,4)
outl = evalfis([l1 l2],lr);
disp(['Output from Logical Test is:',num2str(outl)])

o1 = T.R(1,5)
o2 = T.R(1,6)
o3 = T.R(1,7)
outo = evalfis([o1 o2 o3],or);
disp(['Output from Object Recognation is:',num2str(outo)])

e1 = T.R(1,8)
e2 = T.R(1,9)
e3 = T.R(1,10)
oute = evalfis([e1 e2 e3],er);
disp(['Output from Emotion Test is:',num2str(oute)])

s1 = T.R(1,11)
s2 = T.R(1,12)
s3 = T.R(1,13)
outs = evalfis([s1 s2 s3],sr);
disp(['Output from Social test is:',num2str(outs)])

outm = evalfis([outv outl outo oute outs],main);
disp(['Final Score is:',num2str(outm)]);

m = table(v1,v2,outv,l1,l2,outl,o1,o2,o3,outo,e1,e2,e3,oute,s1,s2,s3,outs,outm);
filename = 'Autism_Test.xlsm'
writetable(m,filename)
winopen(filename)