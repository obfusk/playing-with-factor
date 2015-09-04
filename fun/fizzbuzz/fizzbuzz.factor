#!/usr/bin/env Factor

USING: io kernel math math.ranges present sequences ;
IN: fun.fizzbuzz

: mult? ( m n -- ? ) mod 0 = ;
: append-when-mult ( str1 n m str2 -- str3 n )
  pick [ [ mult? ] dip swap [ append ] [ drop ] if ] dip ;

: fizz ( str1 n -- str2 n ) 3 "Fizz" append-when-mult ;
: buzz ( str1 n -- str2 n ) 5 "Buzz" append-when-mult ;
: no-fizz-or-buzz ( str1 n -- str2 )
  over "" = [ present append ] [ drop ] if ;

: fizzbuzz ( n -- seq )
  [1,b] [ "" swap fizz buzz no-fizz-or-buzz ] map ;
: fizzbuzz-100 ( -- ) 100 fizzbuzz [ print ] each ;

MAIN: fizzbuzz-100
