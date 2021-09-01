clc
clear
G = tf([10],[1 5 6]);
G_sym_rat = PFE(G);
% use vpa to make it more readable if rational form is not simple enough
G_pfe_num = vpa(G_sym_rat,2)
% "pretty" can also be used to make it more readable:
pretty(G_pfe_num)
