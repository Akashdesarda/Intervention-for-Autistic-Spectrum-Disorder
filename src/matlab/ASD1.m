f = readfis('ASD 1.0.fis');
a = input('Input the obtained score in Logic Test (In range of 1 to 10)=');
b = input('Input the obtained score in Verbal Test (In range of 1 to 10)=');
c = input('Input the obtained score in Social Compatibility Test (In range of 1 to 10)=');
d = input('Input the obtained score in Object Recognation Test (In range of 1 to 10)=');
e = input('Input the obtained score in Emotional Test (In range of 1 to 10)=');
out = evalfis([a b c d e],f);
disp(['The result is:',num2str(out)]);