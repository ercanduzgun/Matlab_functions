% This MATLAB creates the R rotation matrix using alpha, beta, gamma orientation angles.


function [Matris] = R(alpha,beta,gamma)
r11=cosd(gamma)*cosd(beta);
r21=sind(gamma)*cosd(beta);
r31=-sind(beta);
r32=cosd(beta)*sind(alpha);
r33=cosd(beta)*cosd(alpha);
r12=cosd(gamma)*sind(beta)*sind(alpha)-sind(gamma)*cosd(alpha);
r13=cosd(gamma)*sind(beta)*cosd(alpha)+sind(gamma)*sind(alpha);
r22=sind(gamma)*sind(beta)*sind(alpha)+cosd(gamma)*cosd(alpha);
r23=sind(gamma)*sind(beta)*cosd(alpha)-cosd(gamma)*sind(alpha);
Matris=[r11 r12 r13
        r21 r22 r23
        r31 r32 r33];
end

