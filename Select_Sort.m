%Octave (probably works also in Matlab) code for selection sorting.

clear all %to remove old variables stored in the memory
disp(["Before sorting: "])
List = round(rand(1,8)*100) %random 1D list, 8 elements long

% SWAP FUNCTION for list's elements
function [A]= swap(A,i,j)
    temp = A(i);
    A(i) = A(j);
    A(j)=temp;
endfunction

% SELECTING - finding minimum and swapping
for i=1:length(List);
  [val,indx]=min(List(i:end));
  [List]=swap(List,i,i+indx-1);
endfor

disp(["After sorting: "])
List