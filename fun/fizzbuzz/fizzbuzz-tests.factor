#!/usr/bin/env Factor

USING: tools.test ;
USE: fun.fizzbuzz
IN: fun.fizzbuzz-tests

{ { "1" "2" "Fizz" "4" "Buzz" "Fizz" "7" "8" "Fizz" "Buzz" "11"
    "Fizz" "13" "14" "FizzBuzz" "16" } }
[ 16 fizzbuzz ] unit-test
