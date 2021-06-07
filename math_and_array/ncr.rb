
combination = -> (n) do
  -> (r) do
    # Formula: n! / ((n-r)! * r!)
    n_fact = (1..n).inject(:*)
    r_fact = (1..r).inject(:*)
    denominator = (1..(n-r)).inject(:*) * r_fact
    result = n_fact / denominator
  end
end



n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)








#----------------------------

# Formula: n! / ((n-r)! * r!)

def factorial(x)
  # (1..x).inject(:*) || 1
  (1..x).inject(:*)
end


combination = -> (n) do
  -> (r) do
    factorial(n) / (factorial(n-r) * factorial(r))
  end
end



n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)