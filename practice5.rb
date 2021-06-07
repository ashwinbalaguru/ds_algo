
def identify_class(obj)
  # write your case control structure here
  case obj
    when Hacker
    puts "It's a Hacker!"
    when Submission
    puts "It's a Submission!"
    when TestCase
    puts "It's a TestCase!"
    when Contest
    puts "It's a Contest!"
  else
    puts "It's an unknown model"
  end
end



def mask_article(str, arr)
  arr.each do |a|
    p a
    str.gsub!(/#{a}/, strike(a))
  end
  str
end

def strike(val)
  "<strike>#{val}</strike>"
end




def rot13(secret_messages)
  # your code here
  alpha = ('a'..'z').to_a

  # p secret_messages

  secret_messages.split.each{|ch| ch}

end


def prime?(num)
  return false if num <= 1

  for i in 2..num-1
    return false if num % i == 0
  end
  true
end

def full_name(first, *rest)
  rest.reduce(first) { |o, x| "#{o} #{x}" }
end

def convert_temp(val, input_scale: 'celsius', output_scale: 'celsius')
  output =
    if input_scale == 'celsius'
      if output_scale == 'fahrenheit'
        (val * 1.8) + 32
      elsif output_scale == 'kelvin'
        val + 273.15
      end
    end

    if input_scale == 'fahrenheit'
      if output_scale == 'celsius'
        (val − 32) * 5/9
      elsif output_scale == 'kelvin'
        (val − 32) * 5/9 + 273.15
      end
    end

    if input_scale == 'kelvin'
      if output_scale == 'celsius'
        val − 273.15
      elsif output_scale == 'fahrenheit'
        (val − 273.15) * 9/5 + 32
      end
    end
  output
end



def call_block
  puts "Hello"
  yield('hello', 99, 'abc', 12)
  puts "End"
end
call_block {|str, num, str1, num1| puts str + ' ' + num.to_s + ' ' + str1 + ' ' + num1.to_s}




max = scores[0]; max_count = 0
min = scores[0]; min_count = 0

for i in (1..scores.size-1)
  if scores[i] > max
    max = scores[i]
    max_count += 1
  elsif scores[i] < min
    min = scores[i]
    min_count += 1
  end
  [max_count, min_count]
end


s = [1, 2, 1, 3, 2]
m = 2
d = 3

final = []
for i in 0..(s.length-1)
  selected_arr = s[i..(i + m-1)]
  final << selected_arr if selected_arr.size == m && selected_arr.sum == d
end
final.count


  # for j in (i+1)..(s.length-1)
  #   p s[i]
  #   p s[j]
  #   p "--------"
  # end



b = 10
keyboards = [3, 1]
drives = [5, 2, 8]

n = 2
m = 3

value = []
for i in 0..n-1
  for j in 0..m-1
    purchased = keyboards[i] + drives[j]
    value << purchased if purchased <= b
  end
end
value.max || -1









