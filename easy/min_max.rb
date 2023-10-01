#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here  
    arr_sorted = arr.sort
    puts [arr_sorted.first(4).sum, arr_sorted.last(4).sum].join(' ')
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
