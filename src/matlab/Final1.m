main = readfis('ASD_MIX.fis')
vr = readfis('ASD_Verbal.fis')
lr = readfis('ASD_Logic.fis')
er = readfis('ASD_Emotional.fis')
or = readfis('ASD_Object.fis')
sr = readfis('ASD_Social.fis')
for i=1:1:3
v1 = input('Input the obtained score in Reading Test of Verbal Module (In range of 1 to 10)=');
v2 = input('Input the obtained score in Speech Test of Verbal Module (In range of 1 to 10)=');
outv = evalfis([v1 v2],vr);
disp(['Output from Verbal Test is:',num2str(outv)])

l1 = input('Input the obtained score in Logic Test of Logical Module (In range of 1 to 10)=');
l2 = input('Input the obtained score in Circumstancial Decision Test of Verbal Module (In range of 1 to 10)=');
outl = evalfis([l1 l2],lr);
disp(['Output from Logical Test is:',num2str(outl)])

o1 = input('Input the obtained score in Object Test of Object Recognation Module (In range of 1 to 10)=');
o2 = input('Input the obtained score in Shape Test of Object Recognation (In range of 1 to 10)=');
o3 = input('Input the obtained score in Color Test of Object Recognation (In range of 1 to 10)=');
outo = evalfis([o1 o2 o3],or);
disp(['Output from Object Recognation is:',num2str(outo)])

e1 = input('Input the obtained score in Depression rate Test of Emotion Module (In range of 1 to 10)=');
e2 = input('Input the obtained score in Anxiety rate Test of Emotion (In range of 1 to 10)=');
e3 = input('Input the obtained score in Confidance Level Test of Emotion (In range of 1 to 10)=');
oute = evalfis([e1 e2 e3],er);
disp(['Output from Emotion Test is:',num2str(oute)])

s1 = input('Input the obtained score in Depression rate Test of Emotion Module (In range of 1 to 10)=');
s2 = input('Input the obtained score in Anxiety rate Test of Emotion (In range of 1 to 10)=');
s3 = input('Input the obtained score in Confidance Level Test of Emotion (In range of 1 to 10)=');
outs = evalfis([s1 s2 s3],sr);
disp(['Output from Social test is:',num2str(outs)])

outm = evalfis([outv outl outo oute outs],main);
disp(['Final Score is:',num2str(outm)]);




t1(i,:)=[v1,v2,l1,l2,o1,o2,o3,e1,e2,e3,s1,s2,s3];
 T=t1(i,:)
xlswrite('Table1try', T, 's1');
end
fileName='Autism_Test.xlsx';
writetable(T,fileName)
winopen(fileName)
