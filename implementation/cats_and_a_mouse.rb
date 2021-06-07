# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the catAndMouse function below.
def catAndMouse(x, y, z)
    x_dis = (x-z).abs
    y_dis = (y-z).abs

    if x_dis < y_dis
        "Cat A"
    elsif x_dis > y_dis
        "Cat B"
    else
        "Mouse C"
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i

    y = xyz[1].to_i

    z = xyz[2].to_i

    result = catAndMouse x, y, z

    fptr.write result
    fptr.write "\n"
end

fptr.close()
