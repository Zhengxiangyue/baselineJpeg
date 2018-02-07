function [h,m] = funcJoinHSM(k,huffmantable,t)
% k is each dc's range 0 to range - 1
% huffmantable is a range(rows) x 2 cell, where the first column is the
% element(generally 1:range), the second column is the codeword. This is
% generated by huffmandict
% s is signal bit, t shows the element position in the range
    [~,N] = size(k);
    h = cell(1,N);
    m = cell(1,N);
    for i=1:N
        % find h, the codeword
        h(1,i) = huffmantable(k(1,i)+1,2);
        % convert t to binary using k(already 1 less than the range) bit
        if(k(1,i) > 0)
             m(1,i) = mat2cell(de2bi(t(1,i),k(1,i)),1);
        end
    end


end