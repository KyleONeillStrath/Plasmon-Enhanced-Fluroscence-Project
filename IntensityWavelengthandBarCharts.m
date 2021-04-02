MSNx = MSN(:,1);
MSNrowx = rows2vars(MSNx);
MSNxrownew = removevars(MSNrowx,{'OriginalVariableNames'});
MSNX = table2array(MSNxrownew);
MSNy = MSN(:,2);
MSNyrow = rows2vars(MSNy);
MSNyrownew = removevars(MSNyrow,{'OriginalVariableNames'});
MSNY = table2array(MSNyrownew);
S4Ix = S4I(:,1);
S4Irowx = rows2vars(S4Ix);
S4Irowxnew = removevars(S4Irowx,{'OriginalVariableNames'});
S4IX = table2array(S4Irowxnew);
S4Iy = S4I(:,2);
S4Irowy = rows2vars(S4Iy);
S4Irowynew = removevars(S4Irowy,{'OriginalVariableNames'});
S4IY = table2array(S4Irowynew);
S9Ix = S9I(:,1);
S9Irowx = rows2vars(S9Ix);
S9Irowxnew = removevars(S9Irowx,{'OriginalVariableNames'});
S9IX = table2array(S9Irowxnew);
S9Iy = S9I(:,2);
S9Irowy = rows2vars(S9Iy);
S9Irowynew = removevars(S9Irowy,{'OriginalVariableNames'});
S9IY = table2array(S9Irowynew);
S12Ix = S12I(:,1);
S12Irowx = rows2vars(S12Ix);
S12Irowxnew = removevars(S12Irowx,{'OriginalVariableNames'});
S12IX = table2array(S12Irowxnew);
S12Iy = S12I(:,2);
S12Irowy = rows2vars(S12Iy);
S12Irowynew = removevars(S12Irowy,{'OriginalVariableNames'});
S12IY = table2array(S12Irowynew);
MSNint = trapz(MSNX,MSNY);
%MSNint = 69.1857
S12Iint = trapz(S12IX,S12IY);
%S12Iint = 62.4895
S9Iint = trapz(S9IX,S9IY);
%S9Iint = 49.9013
S4Iint = trapz(S4IX,S4IY);
%S4Iint = 31.3799
L4Ix = L4I(:,1);
L4Irowx = rows2vars(L4Ix);
L4Irowxnew = removevars(L4Irowx,{'OriginalVariableNames'});
L4IX = table2array(L4Irowxnew);
L4Iy = L4I(:,2);
L4Irowy = rows2vars(L4Iy);
L4Irowynew = removevars(L4Irowy,{'OriginalVariableNames'});
L4IY = table2array(L4Irowynew);
L9Ix = L9I(:,1);
L9Irowx = rows2vars(L9Ix);
L9Irowxnew = removevars(L9Irowx,{'OriginalVariableNames'});
L9IX = table2array(L9Irowxnew);
L9Iy = L9I(:,2);
L9Irowy = rows2vars(L9Iy);
L9Irowynew = removevars(L9Irowy,{'OriginalVariableNames'});
L9IY = table2array(L9Irowynew);
L12Ix = L12I(:,1);
L12Irowx = rows2vars(L12Ix);
L12Irowxnew = removevars(L12Irowx,{'OriginalVariableNames'});
L12IX = table2array(L12Irowxnew);
L12Iy = L12I(:,2);
L12Irowy = rows2vars(L12Iy);
L12Irowynew = removevars(L12Irowy,{'OriginalVariableNames'});
L12IY = table2array(L12Irowynew);
L4Iint = trapz(L4IX,L4IY);
%L4Iint = 93.4439
L9Iint = trapz(L9IX,L9IY);
%L9Iint = 137.4282
L12Iint = trapz(L12IX,L12IY);
%L12Iint = 144.7045
plot(S4IX,S4IY,S9IX,S9IY,S12IX,S12IY,MSNX,MSNY,L4IX,L4IY,L9IX,L9IY,L12IX,L12IY);
%S4Iint = 31.3799
%S9Iint = 49.9013
%S12Iint = 62.4895
%MSNint = 69.1857
%L4Iint = 93.4439
%L9Iint = 137.4282
%L12Iint = 144.7045
ERL4 = L4Iint/MSNint;
ERL9 = L9Iint/MSNint;
ERL12 = L12Iint/MSNint;
%ERL4 = 1.3506
%ERL9 = 1.9864
%ERL12 = 2.0915
ERL = [ERL4 ERL9 ERL12];
bar(ERL);
set(gca,'xticklabel',{'L4','L9','L12'})
xlim=get(gca,'xlim');
hold on
plot(xlim,[1 1])
hold off
text(0.8,1.45062,'1.35062')
text(1.8,2.07,'1.98637')
text(2.8,2.18,'2.09154')
QRS4 = S4Iint/MSNint;
QRS9 = S9Iint/MSNint;
QRS12 = S12Iint/MSNint;
%QRS4 = 0.4536
%QRS9 = 0.7213
%QRS12 = 0.9032
QRL = [QRS4,QRS9,QRS12];
bar(QRL);
ylim([0 1.25])
set(gca,'xticklabel',{'S4','S9','S12'})
xlim=get(gca,'xlim');
hold on
plot(xlim,[1 1])
hold off
text(0.8,0.48,'0.4536')
text(1.8,0.75,'0.7213')
text(2.8,0.93,'0.9032')





