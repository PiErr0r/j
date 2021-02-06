NB. Project euler some problem
c=:150000                 NB. this many primes
b=:2000000                NB. under 2000000
+/(((a=:(p:i. c))<b)#a)   NB. p:i. c is array of first c primes, which are less than b, and summed
