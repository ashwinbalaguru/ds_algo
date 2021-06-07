palindrome = -> (num) {
    num.to_s.split("") == num.to_s.split("").reverse
    }

prime = -> (num) {
   num <= 1 || (2..Math.sqrt(num)).any? {|n| num % n == 0
   } ? false : true
    }


print 2.upto(Float::INFINITY).lazy.select { |x|
  palindrome.(x) && prime.(x)
    }.first(gets.to_i).to_a



# -----------

# Finding Prime
def prime?(num)
  return false if num <= 1

  for i in 2..num-1
    return false if num % i == 0
  end
  true
end

#------------


def prime?(num)
  return false if num <= 1

  for i in 2..num-1
    return false if num % i == 0
  end
  true
end

prime = -> (num) do
  num <= 1 || (2..num/2).any? {|x| num % x == 0 } ? false : true
end

palindrome = ->(num) do
  num.to_s.split('') == num.to_s.split('').reverse
end

range = gets.chomp().to_i
2.upto(Float::INFINITY).lazy.select{|x| palindrome.(x) && prime.(x)}.first(range)


#----------------

require 'prime'

print Prime.each.lazy.select{|x| x == x.to_s.reverse.to_i}.first(gets.to_i)








