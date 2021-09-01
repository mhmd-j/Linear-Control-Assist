clc
clear
G = tf([10],[1 5 6]);
G_sym_rat = PFE(G);
G_pfe_num = vpa(G_sym_rat,2)
% pretty(G_pfe_num)
