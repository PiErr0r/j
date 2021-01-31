int =: 3&u:                                           NB. builtin fnc to get ASCII decimal value of character
z =: int '0'                                          NB. zero
space =: int ' '                                      NB. space since J fills empty spaces in strings
neq =: dyad : 'x (~: # ]) y'                          NB. filter not equals
f =: dyad : 'x+10*y'                                  NB. make a decimal digit from two numbers
s2i =: verb : 'f/|.(t)-(#(t =: space neq int y))$z'   NB. string to integer, fold f to reversed (|.) representation of integers which are in a string and filter non space
a =: ;(s2i"1)>(LF splitstring 1!:1 <'./01_input')     NB. get input, split by newline (LF - linefeed) and parse each row to integer
b =: */(+/(2020=(a+"1 0 a)))#a                        NB. simpler way which occured to me after
a =: (2020 = (a +"1 0 a)) #"1 ((#a),#a) $ a           NB. left: make a n x n matrix of 1s and 0s which satisfy the equation a[i] + a[j] == 2020
                                                      NB. right: create n x n matrix out of vector a, and finally use # operator row by row to extract only numbers that satisfy the condition
nz =: verb : '0 (~: # ]) y'                           NB. extract all non zero values ~: is non equal, # will extract lefthand ones from righthand, ] is used to display the list
res =: */nz;a                                         NB. multiply all nonzero members of array a, ; operator is used to convert matrix to array

echo 'part 1'
echo res
NB. exit ''

a =: ;(s2i"1)>(LF splitstring 1!:1 <'./01_input')     NB. input
suma =: a+"1 0 a                                      NB. add each element to every other
suma =: 0(~: # ]);(2020 >"1 suma)#"1 suma             NB. filter out sums greater than 2020
tmp =: suma +"0 1 a                                   NB. add all of the values to each element of a and 2020 wil occurr 3 times
res =: */~.0(~: #"1 ]);(tmp=2020)#"1 a                NB. for each row in tmp check if there is 2020 and pick the according position from a
                                                      NB. then, spread it out (;), filter out all the zeroes, get unique values (~.) and multiply them (*/)
echo 'part 2'
echo res
exit ''
