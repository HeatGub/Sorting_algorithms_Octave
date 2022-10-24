%Octave (probably works also in Matlab) code for merge sorting.

clear all %clear all the memorized variables
disp(["\n \n "])
setlength = 1000 %of a random list
setrandrange = 1000 %of random numbers
ListIn = round(rand(1,setlength)*setrandrange); %random (0-1000) 1D list, 1000 elements long

function A = swap(A, i, j)
    tmp = A(i);
    A(i) = A(j);
    A(j) = tmp;
end

function D = recurmerge(ListIn)
    if length(ListIn) == 1
        D = ListIn;
    elseif length(ListIn) == 2
        if ListIn(2) < ListIn(1)
            D = swap(ListIn, 1, 2);
        else
            D = ListIn;
        endif
    else
        mid = floor(length(ListIn) / 2);
        fin = length(ListIn);
        A = recurmerge(ListIn(1:mid));
        B = recurmerge(ListIn(mid+1:end));
        C = [A B];
        a = 1; b = mid+1;
        for i = 1:fin
            if a < mid+1 && (b >= fin+1 || C(a) <= C(b))
                D(i) = C(a);
                a = a + 1;
            else
                D(i) = C(b);
                b = b + 1;
            endif
        endfor
    endif
endfunction
disp(["\n \n "])
ListOut = recurmerge(ListIn) %; to silence command window display