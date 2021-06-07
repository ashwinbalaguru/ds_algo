age = 19

unless age <= 18
  puts "get a job"
end


class Card
  include Comparable
  attr_reader :value

  def initialize(value)
    @value = value
  end

  # def <=> (other) #1 if self>other; 0 if self==other; -1 if self<other
  #   self.value <=> other.value
  # end

end

a = Card.new(7)
b = Card.new(10)
c = Card.new(8)

puts a > b # false
puts c.between?(a,b) # true

# Array#sort uses <=> :
p [a,b,c].sort # [#<Card:0x0000000242d298 @value=7>, #<Card:0x0000000242d248 @value=8>, #<Card:0x0000000242d270 @value=10>]



i = 0

loop do
  puts "this is #{i+1}"
  i += 1
  break if i == 10
end



i = 0

while i < 10
  puts "this is #{i+1}"
  i += 1
end

i = 10
until i == 0
  puts "this is #{i}"
  i -= 1
end

i = 0
until i >= 10
  puts "this is #{i+1}"
  i += 1
end




while gets.chomp.downcase != 'yes' do
  puts "will you go to prom with me?"
end



until gets.chomp == 'yes'
  puts 'will you go to prom with me?'
end


def double(start)
  puts start
  if start < 40
    double(start * 2)
  end
end


def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)


def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end


def even_odd(number)
  unless number.is_a? Numeric
    "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end




message = 'ABZ'
key = 2

def caesar_cipher(message, key, result = '')
  message.each_char do |char|
    current_case = char.ord.between?(97, 122) ? 'downcase' : 'upcase'

    char = char.downcase
    char_ascii = char.ord

    code = char_ascii + key
    cipher_code = code > 122 ? (code - 26).chr : code.chr


    result += current_case == 'downcase' ? cipher_code : cipher_code.upcase
  end
  result
end





message = 'ABZ'
key = 2

def caesar_cipher(message, key, result = '')
  message.each_char do |char|
    code = char.ord + key

    if char.ord.between?(65, 90)
      cipher_code = code > 90 ? (code - 26).chr : code.chr
      result += cipher_code

    elsif char.ord.between?(97, 122)
      cipher_code = code > 122 ? (code - 26).chr : code.chr
      result += cipher_code

    else
      result += char
    end
  end
  result
end


def substrings(string, dictionary)
  hash = {}

  dictionary.each do |dict_word|
    string.downcase.split.each do |word|
      if word.include? dict_word
        hash.include?(dict_word) ? hash[dict_word] += 1 : hash[dict_word] = 1
      end
    end
  end
  hash
end




def substrings(string, dictionary)
  words = string.downcase.split
  hash = {}

  dictionary.each do |dict_word|
    words.each do |string_word|
      p dictionary
      p "string_word: #{string_word}, dict_word: #{dict_word}"
      if string_word.include?(dict_word)
        hash.include?(dict_word) ? hash[dict_word] += 1 : hash[dict_word] = 1
      end
    end
  end
  hash
end



stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(stocks)
  profit = {}

  stocks.each_with_index do |stock1, idx1|
    stocks.each_with_index do |stock2, idx2|
      if idx2 > idx1
        profit[[idx1, idx2]] = stock2 - stock1
      end
    end
  end
  profit.sort_by {|k, v| v}[-1][0]
end


stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
  result = []
  profit = 0

  stocks.each_with_index do |bp, bpx|
    stocks.each_with_index do |sp, spx|
      potential_profit = bp - sp

      if bpx > spx && potential_profit > profit
        profit = potential_profit
        result[0] = spx
        result[1] = bpx
      end
    end
  end
  result
end


a = [4,3,78,2,0,2]
def bubble_sort(a)
  n = a.size-1
  sorted = false

  while !sorted do
    sorted = true
    i = 0
    while i < n do
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        sorted = false
      end
      i += 1
    end
  end
  a
end





def bubble_sort(a)
  n = a.size - 1
  swapped = false

  while(!swapped) do
    swapped = true
    i = 0
    while(i < (n-1)) do
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        swapped = false
      end
      i += 1
    end
  end
  a
end












