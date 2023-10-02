#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#
DIVISIBLE_BY = 5
PASSING_GRADE_BEFORE_ROUNDING_UP = 37
ROUND_UP_CONDITION_DIFF = 3

def gradingStudents(grades)
    # Write your code here
    rounded_up_grades = []
    grades.each do |grade|
        if grade < PASSING_GRADE_BEFORE_ROUNDING_UP
            rounded_up_grades << grade
        else
            rounded_up = (grade / DIVISIBLE_BY.to_f).ceil * DIVISIBLE_BY
            new_grade  = (rounded_up - grade) < ROUND_UP_CONDITION_DIFF ? rounded_up : grade
            rounded_up_grades << new_grade
        end       
    end
    
    rounded_up_grades
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#
DIVISIBLE_BY = 5
PASSING_GRADE_BEFORE_ROUNDING_UP = 37
ROUND_UP_CONDITION_DIFF = 3

def gradingStudents(grades)
    # Write your code here
    rounded_up_grades = []
    grades.each do |grade|
        if grade < PASSING_GRADE_BEFORE_ROUNDING_UP
            rounded_up_grades << grade
        else
            rounded_up = (grade / DIVISIBLE_BY.to_f).ceil * DIVISIBLE_BY
            new_grade  = (rounded_up - grade) < ROUND_UP_CONDITION_DIFF ? rounded_up : grade
            rounded_up_grades << new_grade
        end       
    end
    
    rounded_up_grades
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
