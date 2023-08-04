% This Matlab function calculates the alpha beta gamma angles using R rotation matrix 3x3 

function [FF] = R_to_abg(R)
r11=R(1,1);
r12=R(1,2);
r13=R(1,3);
r21=R(2,1);
r22=R(2,2);
r23=R(2,3);
r31=R(3,1);
r32=R(3,2);
r33=R(3,3);

gamma1=atan2d(r21,r11);
beta1=atan2d(-r31,sqrt(r32^2+r33^2));
alpha1=atan2d(r32,r33);

gamma2=atan2d(-r21,-r11);
beta2=atan2d(-r31,-sqrt(r32^2+r33^2));
alpha2=atan2d(-r32,-r33);

FF1=[alpha1;beta1;gamma1];
FF2=[alpha2;beta2;gamma2];
FF=[FF1 FF2];
end

