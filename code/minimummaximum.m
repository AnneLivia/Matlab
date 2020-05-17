function [mmr, mmm] = minimax(M)
    mmr = [];
    sz = size(M);
    
    %max_t = -1;
    %min_t = 1000000;
       
    %i = 1;
    %while i <= sz(1)
    %    mi = min(M(i, :));
    %    ma = max(M(i, :));
    %    mmr = [mmr, (ma - mi)];
    %    i = i + 1;
    %end
    M = M';
    mmm = max(max(M)) - min(min(M));
    mmr = max(M)-min(M);
end