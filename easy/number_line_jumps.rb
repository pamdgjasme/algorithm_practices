#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#

def kangaroo(x1, v1, x2, v2)
    # Write your code here
    # (v2 > v1 && x2 > x1):
    # if kangaroo2 is faster than kangaroo1 and kangaroo2's starting position is already greater than
    # kangaroo1, there is no chance they will meet at the same location
    
    # (v1 - v2 <= 0 || x1 - x2 <= 0):
    # when the Kangaroo1 has a start at a preceding location as well as has a lower jump rate
    # than the Kangaroo2 then it is not possible for the Kangaroo1 
    # to catch up with the second Kangaroo.
    
    
    # x_diff % v_diff == 0 ? 'YES' : 'NO':
    # they will meet if they aare multiples of ech other
    return 'NO' if (v2 > v1 && x2 > x1) || (v1 - v2 <= 0)
    
    x_diff = x1 - x2
    v_diff = v1 - v2

    x_diff % v_diff == 0 ? 'YES' : 'NO'
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

x1 = first_multiple_input[0].to_i

v1 = first_multiple_input[1].to_i

x2 = first_multiple_input[2].to_i

v2 = first_multiple_input[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"

fptr.close()
