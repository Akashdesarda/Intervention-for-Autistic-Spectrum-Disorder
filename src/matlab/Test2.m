main = readfis('ASD_MIX.fis')
vr = readfis('ASD_Verbal.fis')
lr = readfis('ASD_Logic.fis')
er = readfis('ASD_Emotional.fis')
or = readfis('ASD_Object.fis')
sr = readfis('ASD_Social.fis')

v1 = ExceltoMatlab.VarName1(1)
v2 = ExceltoMatlab.VarName2(1)
outv = evalfis([v1 v2],vr);
disp(['Output from Verbal Test is:',num2str(outv)])

l1 = ExceltoMatlab.VarName3(1)
l2 = ExceltoMatlab.VarName4(1)
outl = evalfis([l1 l2],lr);
disp(['Output from Logical Test is:',num2str(outl)])

o1 = ExceltoMatlab.VarName5(1)
o2 = ExceltoMatlab.VarName6(1)
o3 = ExceltoMatlab.VarName7(1)
outo = evalfis([o1 o2 o3],or);
disp(['Output from Object Recognation is:',num2str(outo)])

e1 = ExceltoMatlab.VarName8(1)
e2 = ExceltoMatlab.VarName9(1)
e3 = ExceltoMatlab.VarName10(1)
oute = evalfis([e1 e2 e3],er);
disp(['Output from Emotion Test is:',num2str(oute)])

s1 = ExceltoMatlab.VarName11(1)
s2 = ExceltoMatlab.VarName12(1)
s3 = ExceltoMatlab.VarName13(1)
outs = evalfis([s1 s2 s3],sr);
disp(['Output from Social test is:',num2str(outs)])

outm = evalfis([outv outl outo oute outs],main);
disp(['Final Score is:',num2str(outm)]);

m = table(v1,v2,l1,l2,o1,o2,o3,e1,e2,e3,s1,s2,s3);
filename = 'Autism_Test.xlsm'
writetable(m,filename)
winopen(filename)