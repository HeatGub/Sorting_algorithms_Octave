%Octave (probably works also in Matlab) code for insertion sorting.

clear all %to remove old variables stored in the memory
disp(["Before sorting: "])
List = round(rand(1,8)*100) %random 1D list, 8 elements long
len = length(List(1,:)); %length of a list

%SORTING BY INSERTION
for i=2:len %(2:len, since octave's indexing starts from 1)
  val_i = List(i);
  while i>1 && val_i < List(i-1); 
    List(i) = List(i-1); %List(i) value currently memorized as val_i, now rearranging the List
    i--;
  endwhile
  List(i) = val_i; 
endfor

disp(["After sorting: "])
List