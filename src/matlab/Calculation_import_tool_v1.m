main = readfis('ASD_MIX.fis')
vr = readfis('ASD_Verbal.fis')
lr = readfis('ASD_Logic.fis')
er = readfis('ASD_Emotional.fis')
or = readfis('ASD_Object.fis')
sr = readfis('ASD_Social.fis')

v1 = ImportwebdataS1.VarName2(1)
v2 = ImportwebdataS1.VarName3(1)
outv = evalfis([v1 v2],vr);
disp(['Output from Verbal Test is:',num2str(outv)])

l1 = ImportwebdataS1.VarName4(1)
l2 = ImportwebdataS1.VarName5(1)
outl = evalfis([l1 l2],lr);
disp(['Output from Logical Test is:',num2str(outl)])

o1 = ImportwebdataS1.VarName6(1)
o2 = ImportwebdataS1.VarName7(1)
o3 = ImportwebdataS1.VarName8(1)
outo = evalfis([o1 o2 o3],or);
disp(['Output from Object Recognation is:',num2str(outo)])

e1 = ImportwebdataS1.VarName9(1)
e2 = ImportwebdataS1.VarName10(1)
e3 = ImportwebdataS1.VarName11(1)
oute = evalfis([e1 e2 e3],er);
disp(['Output from Emotion Test is:',num2str(oute)])

s1 = ImportwebdataS1.VarName12(1)
s2 = ImportwebdataS1.VarName13(1)
s3 = ImportwebdataS1.VarName14(1)
outs = evalfis([s1 s2 s3],sr);
disp(['Output from Social test is:',num2str(outs)])
outm = evalfis([outv outl outo oute outs],main);

disp(['Final Score is:',num2str(outm)]);

m = table(v1,v2,outv,l1,l2,outl,o1,o2,o3,outo,e1,e2,e3,oute,s1,s2,s3,outs,outm);
filename = 'C:\Users\expert\Google Drive\Final Project\src\excel\All_in_one.xlsm'
writetable(m,filename)
winopen(filename) 