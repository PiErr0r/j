# Notes

## Arrays

item - part of an n-cell list whose rank is n-1 (largest part of a list)

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

you can pass a shape to `i.` monad e.g.:
```J
   i.2 3
0 1 2
3 4 5
```

`i. _n` - creates a reversed list of ints from n - 1 to 0 inclusively

`#:` integer to binary list, `#.` binary list to integer

`u"n` - rank conjuction: specify the rank of a verb (`v"0 1` has monad rank 1, dyad left rank 0, and dyad right rank 1)
