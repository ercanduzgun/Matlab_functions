function [] = plot_coordinate_system(i,j,k,P,s,csn)
% This function plots a 3D coordinate system, and labels their axis.

% i,j,k is the unit vectors of the new coordinate system
% P is the location of where the new coordinate system would be locate
% s is scale factor of the unit vector lines. If the unit vectors of the
% new coordinate system are too small in the figure, s scale should be
% increased manually until it fits the desire
% i,j,k,P are  vectors that each has 3 elements
% csn is for the coordinate system no. It is for printing the unit vector
% text . For example i_5 indicates unit vector i, in the 5th coordiante
% system.
hold on;
P_i=[P+s*(i)];
plot3([P(1) P_i(1)],[P(2) P_i(2)],[P(3) P_i(3)],'r');
text(P_i(1),P_i(2),P_i(3),sprintf('i_{%d} ', csn),'Color','red','FontSize',12);
P_j=[P+s*(j)];
plot3([P(1) P_j(1)],[P(2) P_j(2)],[P(3) P_j(3)],'g');
text(P_j(1),P_j(2),P_j(3),sprintf('j_{%d} ', csn),'Color','green','FontSize',12);
P_k=[P+s*(k)];
plot3([P(1) P_k(1)],[P(2) P_k(2)],[P(3) P_k(3)],'b');
text(P_k(1),P_k(2),P_k(3),sprintf('k_{%d} ', csn),'Color','blue','FontSize',12);
end

