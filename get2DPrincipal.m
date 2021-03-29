function [principal_x,principal_y,alpha,tauMax] = get2DPrincipal(sig_x,sig_y,tau_xy)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sig_avg= mean([sig_x,sig_y]);

R= sqrt( (tau_xy)^2 + (sig_x-sig_avg)^2 );


principal_x = sig_avg + R;
principal_y= sig_avg - R;
alpha = 0.5*atan2d(tau_xy,(sig_x - sig_avg));

R_xz = abs(principal_x)/2;
R_yz = abs(principal_y)/2;
tauMax = max([R,R_xz,R_yz]);
end

