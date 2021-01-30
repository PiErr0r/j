int =: 3&u:                                           NB. builtin fnc to get ASCII decimal value of character
z =: int '0'                                          NB. zero
space =: int ' '                                      NB. space since J fills empty spaces in strings
neq =: dyad : 'x (~: # ]) y'                          NB. filter not equals
f =: dyad : 'x+10*y'                                  NB. make a decimal digit from two numbers
s2i =: verb : 'f/|.(t)-(#(t =: space neq int y))$z'   NB. string to integer, fold f to reversed (|.) representation of integers which are in a string and filter non space
a =: ;(s2i"1)>(LF splitstring 1!:1 <'./01_input')     NB. get input, split by newline (LF - linefeed) and parse each row to integer
a =: (2020 = (a +"1 0 a)) #"1 ((#a),#a) $ a           NB. left: make a n x n matrix of 1s and 0s which satisfy the equation a[i] + a[j] == 2020
                                                      NB. right: create n x n matrix out of vector a, and finally use # operator row by row to extract only numbers that satisfy the condition
nz =: verb : '0 (~: # ]) y'                           NB. extract all non zero values ~: is non equal, # will extract lefthand ones from righthand, ] is used to display the list
res =: */nz;a                                         NB. multiply all nonzero members of array a, ; operator is used to convert matrix to array
echo 'part 1'
echo res
exit ''
