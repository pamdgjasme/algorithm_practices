Time Conversion

#!/bin/ruby

require 'json'
require 'stringio'
require 'time'
#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    time_array = s.split(':').map(&:to_i)
    hours      = time_array[0]
    minutes    = time_array[1].to_s.rjust(2, '0')
    seconds    = time_array[2].to_s.rjust(2, '0')
    @am_or_pm   = s[-2..-1].downcase
    
    
    [convert_to_24h(hours).to_s.rjust(2, '0'), minutes, seconds].join(':')
end

def convert_to_24h(t)
    return 0 if t == 12 && @am_or_pm == 'am'
    return t + 12 if @am_or_pm == 'pm' && t != 12
    
    t
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
