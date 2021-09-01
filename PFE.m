function [GPFE] = PFE(G)
    s = zpk('s');
    [num,den] = tfdata(G);
    clear s; syms s
    [r,p,k] = residue(num{:},den{:});
    GPFE = r(1)/(s-p(1));
    n = 1;
    for j = 2:length(r)
        if p(j-1) == p(j)
            n=n+1;
        else
            n = 1;
        end
        GPFE = r(j)/(s-p(j))^n + GPFE;
    end
    if ~isempty(k)
        GPFE = GPFE + k;
    end
end