# Notes

## Arrays

item - part of an n-cell list whose rank i n-1 (largest part of a list)

`monad $` - shape of a list

`dyad $` - make shape `x` from `y`

`monad #` - size of a list (number of items)

`#` returns a scalar, while `$` always returns a list

```J
   a =: 2 3 $ 2 5 $ 1 10 15
  1 10 15  1 10
 15  1 10 15  1
  1 10 15  1 10

 15  1 10 15  1
  1 10 15  1 10
 15  1 10 15  1

   a =: 1 2 3
   a % $a
| length error NB. because you can't divide a list of length 3 with list of length 1
   a % #a
0.33 0.67 1.0  NB. since dividing a list with scalar will divide each element with it
```

`i. n` - creates a list of ints from 0 to n without n

`i. _n` - creates a reversed list of ints from n - 1 to 0 inclusively


