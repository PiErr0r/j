#!/usr/bin/ijconsole
mk =: dyad : 'x ,"0 1 y'                NB. make a circle vector from n x 1 vector of radii and n x 2 matrix of x,y coordinates
len =: verb : '%: +/ *: y'"1            NB. %: sqrt, *: square, calculates length of a vector
rins =: dyad : '({.y+{.x)>:len}.y-x'"1  NB. returns 1/0 if two circles intersect (form =: r x y where r is radius and x and y are center coordinates of a circle) 
a =: 1 2 3
echo a
exit ''


