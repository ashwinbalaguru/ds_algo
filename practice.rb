[[11, 2, 4],
[4, 5 , 6],
[10, 8,  -12]]


sum = 0
count = 0

count = 2
arr.each do |a|
  binding.pry
  sum += a[count]
  count -= 1
end



sum1 = 0
sum2 = 0
count = 0
arr.each {|a| sum1 += a[count]; count+=1}
count = 2
arr.each {|a| sum2 += a[count]; count-=1}

(sum1 - sum2).abs





    p_count = 0
    n_count = 0
    z_count = 0
    len = arr.length.to_f
    arr.each do |a|
        if a.positive?
            p_count += 1
        elsif a.negative?
            n_count += 1
        else
            z_count += 1
        end
    end
    p ['%.6f' % (p_count/len), '%.6f' % (n_count/len).round(6), '%.6f' % (z_count/len).round(6)]








negative, non_negative = arr.partition{|a| a < 0}
positive, zero =  non_negative.partition{|a| a == 0}

[zero, positive, negative].map{|val| p '%.6f' % (val.length/arr.length.to_f)}.to_f







n = 6

for i in 1..n
  space = n - i
  print " "*space
  puts "#"*i
end



"#{arr.min(4).sum}"



s = "07:05:45PM"
s = s.split(":")
if s[0] == "12" && s[2][-2..3] == 'AM'
  s[0] = '00'
elsif s[0] == "12" && s[2][-2..3] == 'PM'
    s[0] = '12'
elsif s[2][-2..3] == 'PM'
  s[0] = (s[0].to_i + 12).to_s
end
s.join(":")[0..-3]





    s = s.split(":")
    s[0] = (s[0].to_i + 12 % 12).to_s
    s.join(":")[0..-3]





grades = [73, 67, 38, 33]

final = []
grades.each do |grade|
  round = round_to_5 grade
  if grade > 37
    grade = round - grade < 3 ? round : grade
  end
  final << grade
end
final

def round_to_5(n)
  return n if n % 5 == 0
  round = n.round(-1)
  round > n ? round : round + 5
end







x1, v1, x2, v2 = [0, 3, 4, 2]


def kangaroo(x1, v1, x2, v2)
    return "NO" if x2>x1 && v2>v1
    while x2 <= 15
      temp = x1
      while temp <= 15
        return "YES" if temp == x2
        temp += v1
      end
      x2 += v2
    end
    "NO"
end



def kangaroo(x1, v1, x2, v2)
    if x2>x1 && v2>v1
        return 'NO'
    end
    if (x2-x1) % (v2-v1) == 0
        return "YES"
    end
    "NO"
end



n = 6
p_v = 2

pos = []

front_page = [[1]]
front_page += (2..n).each_slice(2).to_a
pos << front_page.find_index{|f| f.include? p_v}

back_page = front_page.reverse
pos << back_page.find_index{|f| f.include? p_v}

pos.min


sum_row = []
s = [[4, 9, 2], [3, 5, 7], [8, 1, 5]]
s.each.with_index {|x, idx| sum_row[idx] = x.sum}

# sum_row.select.with_index{|x, idx| idx if x != 15}

sum_col = []
for i in 0..2
  sum = 0
  for j in 0..2
    sum += s[i][j]
  end
  sum_col << sum
end




pre = [ [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
      ]



min = []
pre.each_with_index do |x, idx|
  sum = 0
  for i in 0..2
    for j in 0..2
      sum += (s[i][j] - x[i][j]).abs
    end
  end
  min << sum
end
min.min




x = [4, 6, 5, 3, 3, 1]

subs = []
max_len = 0
x.each do |val|
  s = []
  for i in 0..(x.size-1) do
    binding.pry
    s << val if (val-x[i]).abs < 2
  end
  subs << s
end



alice = [50, 65, 77, 90, 102]
scores = [100, 100, 90, 80, 75, 60]


ranks.sort.reverse.uniq.each.with_index {|r, idx| hash[r] = idx+1}
hash = {100=>1, 90=>2, 80=>3, 75=>4, 60=>5}


scores_uniq = scores.uniq
result = []
alice.each do |a|
  used = false
  i = 0
  while i < scores_uniq.size
    if scores_uniq[i] < a
      used = true
      result << i + 1
      break
    elsif scores_uniq == a
      used = true
      result << i + 1
      break
    end
    i += 1
  end
  result <<  i + 1 unless used
end
result




def climbingLeaderboard(scores, alice)
    scores_uniq = scores.uniq
    result = []
    alice.each do |a_score|
      i = 0
      while i < scores_uniq.size
          if scores_uniq[i] <= a_score
              break
          end
          i += 1
      end
      result <<  i + 1
    end
    result
end




def fact(num)
  n = num
  if n == 0
    1
  else
    n * fact(num-1)
  end
end



# # n is grid
# n = 5
# obstacles = [[5, 5], [4, 2], [2, 3]]
# r_q, c_q = 4, 3


q_pos = [r_q - 1, c_q - 1]
grid = Array.new(n) {Array.new(n, 0)}

obstacles.each do |row, col|
  grid[row-1][col-1] = 'NA'
end

grid[r_q - 1][c_q - 1] = "Q"


# ups
qr, qc = q_pos
qr -= 1
counter = 0
while(qr >= 0)
  break if grid[qr][qc] == 'NA'
  counter += 1
  grid[qr][qc] = 'X'
  qr -= 1
end

# downs
qr, qc = q_pos
qr += 1
while(qr <= n-1)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qr += 1
end

# left
qr, qc = q_pos
qc -= 1
while(qc >= 0)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qc -= 1
end

# right
qr, qc = q_pos
qc += 1
while (qc <= n-1)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qc += 1
end

#up-right
qr, qc = q_pos
qr -= 1; qc += 1
while (qr >= 0 && qc <= n-1)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qr -= 1; qc += 1
end


#up-left
qr, qc = q_pos
qr -= 1; qc -= 1
while (qr >= 0 && qc >= 0)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qr -= 1; qc -= 1
end


#down-right
qr, qc = q_pos
qr += 1; qc += 1
while (qr <= n-1 && qc <= n-1)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qr += 1; qc += 1
end

#down-left
qr, qc = q_pos
qr += 1; qc -= 1
while (qr <= n-1 && qc >= 0)
  break if grid[qr][qc] == 'NA'
  grid[qr][qc] = 'X'
  counter += 1
  qr += 1; qc -= 1
end





qr = 5
qc = 4
# q_pos = [r_q - 1, c_q - 1]

# no of moves queen can make without obstacles
left = qc - 1
right = n - qc

up = n - qr
down = qr - 1

upright = up >= right ? right : up
upleft = up >= left ? left : up
downright = down >= right ? right : down
downleft = down >= left ? left : down


# with obstacles

obstacles.each do |row, col|
  # left
  if row == qr && col < qc
    if qc-col-1 < left
      left = qc-col-1
    end

  # right
  elsif row == qr && col > qc
    if col-qc-1 < right
      right = col-qc-1
    end

  # up
  elsif row > qr && col == qc
    if row-qr-1 < up
      up = row-qr-1
    end

  # down
  elsif row < qr && col == qc
    if qr-row-1 < down
      down = qr-row-1
    end

  # upleft
  elsif row > qr && col < qc
    if row-qr == qc-col
      if row-qr-1 < upleft
        upleft = row-qr-1
      end
    end

  # upright
  elsif row > qr && col > qc
    if row-qr == col-qc
      if row-qr-1 < upright
        upright = row-qr-1
      end
    end

  #downleft
  elsif row < qr && col < qc
    if qr-row == qc-col
      if qr-row-1 < downleft
        downleft = qr-row-1
      end
    end

  # downright
  elsif row<qr && col > qc
    if qr-row == col-qc
      if qr-row-1 < downright
        downright = qr-row-1
      end
    end
  end
end

attack_count = left + right + up + down + upright + upleft + downright + downleft










s = "haveaniceday"

s_val = s.split.join
s_len = s_val.size


row = Math.sqrt(s_len).to_i
col = row+1

arr = Array.new(col) {Array.new(row)}

counter = 0

# for i in 0..col-1
#   for j in 0..row-1
#     arr[i][j] = s_val[counter]
#     counter += 1
#   end
# end


for i in 0..col-1
  arr[i][0] = s_val[counter]
  counter += 1
end


j = col - 1
while (j < col-1)

  j -= 1
end







s = "haveaniceday"

chars = s.split.join

len_sqrt = Math.sqrt(chars.length)
row = len_sqrt.floor
col = len_sqrt.ceil


while row * col < chars.length
  if row < col
    row += 1
  else
    col += 1
  end
end


grid = Array.new(row) {Array.new(col)}

count = 0

row.times do |r|
  col.times do |c|
    grid[r][c] = chars[count]
    count += 1
  end
end



enc_mess = ''

col.times do |c|
  row.times do |r|
    char = grid[r][c]
    enc_mess += char unless char.nil?
  end
  enc_mess += ' '
end


enc_mess



bin_val = gets.chomp

bin_no = gets.chomp.split.map(&:to_i)

val = gets.chomp.to_i

val.times do
  queries << gets.chomp.split.map(&:to_i)
end

queries.each do |row, col|
  for i in row..col
    bin_no[row-1] = bin_no[row-1] == 0 ? 1 : 0
  end
end

p val
bin_no.each {|b| print "#{b} "}







a = [1, 2, 3, 5]


a_len = a.size
hash = {}
final = []

a.each do |ele|
  for i in 0..a_len-1
    next if ele == a[i] || ele > a[i]
    div = ele.to_f/a[i]
    hash[div] = [ele, a[i]]
    final << div
  end
end

hash[final.sort[k-1]]






    val.each_with_index do |v, idx|
        if v == 'S'
          count +=1 if v[idx + 1] == 'O' || v[idx + 1] == 'S'
        elsif v == 'O'
          count +=1 if v[idx + 1] == "S"
        end
    end



    val.each_with_index do |v, idx|
      if v == 'S'
        count += 1 unless v[idx+1] == 'O' && v[idx+2] == 'S'
      end
    end


count = 0
for i in 0..s.size
  binding.pry
  violation(s, count) unless s[i..i+2] == 'SOS'
end
count

def violation(str, count)
  if str[0] != 'S'
    count += 1
  elsif str[1] != 'O'
    count += 1
  elsif str[2] != 'S'
    count += 1
  end
  count
end



count = 0
i = 0
while(i <= s.size-1)
  i += 3
  next if s[i..i+2] == 'SOS' || s[i..i+2] == ''
  if s[i] != 'S'
    count += 1
  elsif s[i+1] != 'O'
    count += 1
  elsif s[i+2] != 'S'
    count += 1
  end
end
count



count = 0
striped = s.chars.each_slice(3).to_a
sos = []
striped.each {|r| sos << r.join }

sos.each do |val|
  next if val == 'SOS'
  count += 1 if (val[0] != 'S')
  count += 1 if (val[1] != 'O')
  count += 1 if (val[2] != 'S')
end






s = 'hhaacckkekraraannk'

match_val = 'hackerrank'.chars
sorted = []
match_val.each_with_index do |val, idx|
  next unless val == match_val[idx]
  sorted << val
end





match_val = 'hackerrank'.chars

match_val.each do |m|

end






s = 'hhaacckkekraraannk'

word = 'hackerrank'
i = 0
for i in 0..s.size-1
  i+=1 if s[ch] == word[i]
  break if i == 10
end

p i == 10 ? "YES" : "NO"







s = 'aaabccddd'

s = 'baab'


s1 = 0
s2 = 0
while (s1 == s2)
  for i in 0..s.size-1
    s1 = s[i]
    s2 = s[i+1]
    binding.pry
    s[i] = '' if s1 == s2
    s[i+1] = '' if s1 == s2
  end
end


s = 'baab'

s1 = 0
s2 = 0
i = 0
while (s1 == s2 || s1.empty? || s2.empty?)
  binding.pry
  p s
  s[i] = s[i+1] = '' if s[i+1] && s[i] == s[i+1]
  i += 1
end


s = 'baab'

a = ''
b = ''
while (a == b)
  for i in 0..s.size-1
    break unless s[i]
    s[i] = s[i+1] = '' if s[i] == s[i+1]
  end
end





s = 'baab'

s = 'aaabccddd'

arr = []

s.chars.each do |char|
  if arr && char == arr[-1]
    arr.pop
  else
    arr.push(char)
  end
end

arr.empty? ? 'Empty String' : arr.join












n = 5
devotee = [[1, 2, 10], [2, 3, 20], [2, 5, 25]]


beggers = Array.new(n, 0)
devotee.each do |d|
  for i in d[0]..d[1]
    beggers[i-1] += d[2]
  end
end

z = []
for i in 0..a.size-1
  for j in 0..a[i].size-1
    z<< a[i][j]
  end
end
z







a =
[
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
]




dir_list = ['right', 'left', 'top', 'bottom']

dir = 'right'

m = a.size
n = a.first.size
t = 0; b = (m-1); l = 0; r = (n-1)


final = []

while(t<=b && l<=r)
  if dir == 'right'
    for i in l..r
      final << a[t][i]
    end
    t += 1
    dir = 'bottom'
  end

  if dir == 'bottom'
    for i in t..b
      final << a[i][r]
    end
    r -= 1
    dir = 'left'
  end

  if dir == 'left'
    for i in r.downto(l)
      final << a[b][i]
    end
    b -= 1
    dir = 'top'
  end

  if dir == 'top'
    for i in b.downto(t)
      final << a[i][l]
    end
    l += 1
    dir = 'right'
  end
end













def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.size])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end



def mergesort(list)
  return list if list.size <= 1
  mid   = list.size / 2
  left  = list[0...mid]
  right = list[mid...list.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end





def quick_sort(a)
  sv = a[0]
  ev = a[-1]

  pivot = ev
  pi =

end





    def maxArr(a)
      # initialize significantly large opposite number for the first case to definetly pass
      max1,min1,max2,min2 = [-(2**10), (2**10), -(2**10), (2**10)]
      a.each_with_index do |num, i|
          max1 = num + i if (num+i) > max1
          min1 = num + i if (num+i) < min1
          max2 = num - i if (num-i) > max2
          min2 = num - i if (num-i) < min2
      end
      [(max1 - min1), (max2 - min2)].max
    end








# brute force
max = a[0]
for i in 0..(a.size-1)
  sum = 0
  for j in i..(a.size-1)
    sum += a[j]
    max = sum if sum > max
  end
end
max



# only +ve response because sum will be 0 for negative response
max = 0; sum = 0
a.each do |num|
  sum += num
  sum = 0 if sum < 0
  max = sum if sum > max
end
max

# including negative reponse
max = a[0]; sum = 0
a.each do |num|
  sum = [num, sum+num].max
  max = [max, sum].max
end
max





max = 0; max_idx = []; sum = 0; sum_idx = []

a.each_with_index do |num, idx|
  if num >= 0
    sum += num
    sum_idx << num
    if sum > max
      max = sum
      max_idx = sum_idx
    elsif sum == max
      max = sum
      max_idx = sum_idx if sum_idx.size > max_idx.size
    end
  else
    sum = 0
    sum_idx = []
  end
end
max_idx




subs = []; list = []
a.each_with_index do |num, idx|
  p num
  subs << num if num >= 0

  if (num < 0) || idx == a.size-1
    list = subs if subs.inject(:+).to_i >= list.inject(:+).to_i
    subs = []
  end
end









a = 10

arr = Array.new(a){Array.new(a)}

dir = 'right'
counter = 1
t = 0; d = (a-1); l = 0; r = (a-1)

while(counter <= (a*a)) do
  if dir == 'right'
    for i in l..r do
      arr[t][i] = counter
      counter += 1
    end
      t += 1
      dir = 'down'
  end

  if dir == 'down'
    for i in t..d do
      arr[i][r] = counter
      counter += 1
    end
    r -= 1
    dir = 'left'
  end

  if dir == 'left'
    for i in r.downto(l) do
      arr[d][i] = counter
      counter += 1
    end
    d -= 1
    dir = 'top'
  end

  if dir == 'top'
    for i in d.downto(t) do
      arr[i][l] = counter
      counter += 1
    end
      l += 1
      dir = 'right'
  end
end





a = [1, 2, 3, 4]

# a.each_slice(2).to_a

a = a.sort
i = 0
while(i < a.size)
  temp = a[i]
  a[i] = a[i+1]
  a[i+1] = temp
  i+=2
end
a.


for i in 0..(a.size-1)
  temp = a[i]
  a[i] = a[i+1]
  a[i+1] = temp
end


a.each_with_index do |num, idx|
  temp = a[idx]
  a[idx] = a[idx+1]
  a[idx+1] = temp
end




n = a.size - 1
swapped = false

while(!swapped) do
  swapped = true
  i =
  while(i < (n-1)) do
    if a[i] > a[i+1]
      a[i], a[i+1] = a[i+1], a[i]
      swapped = false
    end
    i += 1
  end
end



    def allFactors(a)
      fact = []
      for i in 1..Math.sqrt(a)
        if a % i == 0
          fact << i
          fact << a/i if i != Math.sqrt(a)
        end

          fact << i if a%i==0
      end
      fact
    end



    a = 5

    def fizzBuzz(a)
        x = []
        for i in 1..a do
            if i % 3 == 0 && i % 5 == 0
              x << 'FizzBuzz'
            elsif i % 3 == 0
              x << 'Fizz'
            elsif i % 5 == 0
              x << 'Buzz'
            else
              x << i
            end
        end
        x
    end


a = 1; b = 0
val = [a, b].min
max = 1

for i in 1..val do
  max = i if (a % i == 0) && (b % i == 0)
end
max






x = [10, 20, 20, 10, 10, 30, 50, 10, 20]

hash = {}
x.uniq {|a| hash[a] = 1}

x.each {|a| hash[a] += 1}




arr = Array.new(n)
len = arr.size-1

for i in 0..len
  if arr[i].nil?
    if arr.count(nil) != 0
      arr[i] = (i+1); arr[len] = -(i+1)
    else
      arr[i] = 0
    end
  end
end









n = 5

a = Array.new(n)
s1 = n/2
s2 = n -s1

sum1 = 0

for i in 1..s1
  a[i-1] = -rand(1..10)
  sum1 += a[i-1]
end

val = sum1.abs - (s2-1)
a[s1] = val

count = 1
for i in (s1+1)..n-1
  a[i] = count
  count+=1
end



x = [10, 20, 20, 10, 10, 30, 50, 10, 20]

hash = {}
x.uniq.each do |num|
  hash[num] = x.count(num)
end

count = 0
hash.each do |k,v|
  count += v/2
end

count





x = ["U", "D", "D", "D", "U", "D", "U", "U"]

altitude = 0
sum = 0

s.chars.each do |ch|
  if ch == 'U'
    sum += 1 if altitude == -1
    altitude += 1
  elsif ch == 'D'
    altitude -=1
  end
end






x = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0]

path =[]

i = 0
while (i < x.size)
  if x[i] == 0
    path << i
  end

  if x[i+2] == 0
    i = i + 2
  else
    i = i + 1
  end
end

path.size - 1



s = 'aba'

n = 10

a_count = s.count('a')
final = n * a_count.to_f/ s.size
final.ceil

# for i in s.size..n-1
#   p "#{i} => #{i % s.size}"
#   up_string = i % s.size
#   new_string[i] = s[up_string]
# end


for i in 0..n-1
  up_string = i % s.size
  p "#{i} => #{up_string}"
  count += 1 if s[up_string] == 'a'
end



list = ('A'..'Z').to_a

sum = 0
for i in 0..a.size-1 do
  binding.pry
  val = (list.find_index(a[i]) + 1)
  sum += val + (i * 26)
end
sum



result = 0
for i in 0..a.size-1
  result *= 26
  result += (list.find_index(a[i]) + 1)
end










# sum = 0
# a.chars.each do |ch|
#   sum += (ch.bytes.first - 64)
#   break if a.size == 1
#   sum += 26
# end



a = 'A'

a.bytes








    def generateMatrix(a)
      len = a * 2 -1
      arr = Array.new(len){Array.new(len)}

      dir = 'right'
      counter = a
      t = 0; d = (len-1); l = 0; r = (len-1)

      while (counter >= 1)
        if dir == 'right'
          for i in l..r do
            arr[t][i] = counter
          end
        t += 1
        dir = 'down'
        end

        if dir == 'down'
          for i in t..d do
            arr[i][r] = counter
          end
          r -= 1
          dir = 'left'
        end

        if dir == 'left'
          for i in r.downto(l) do
            arr[d][i] = counter
          end
          d -= 1
          dir = 'top'
        end

        if dir == 'top'
          for i in d.downto(t) do
            arr[i][l] = counter
          end
            l += 1
            dir = 'right'
        end
        counter -= 1
      end
      arr
    end




def find_first_last(a, b, first_search)
  low = 0
  high = a.size - 1

  while (low <= high) do
    mid = (low + high)/2

    if a[mid] == b
      result = mid
      if first_search
        high = mid -1
      else
        low = mid + 1
      end
    elsif a[mid] > b
      high = mid - 1
    else
      low = mid + 1
    end
  end
  result
end



def findCount(a, b)
  first = find_first_last(a, b, true)
  last = find_first_last(a, b, false)

  unless first.nil? && last.nil?
    last - first + 1
  else
    0
  end
end





def findMin(a)
  low = 0
  high = a.size - 1

  while (low < high)
    if a[low] <= a[high]
      return a[low]
    end
    mid = (low + high)/2
    nv = mid + 1
    pv = mid - 1

    if a[mid] <= a[nv] && a[mid] <= a[nv]
      return a[mid]
    elsif a[mid] <= a[high]
      high = mid - 1
    elsif a[mid] >= a[low]
      low = mid + 1
    end
  end
end










def test
  a = 1
  low = 0
  high = a - 1

  while (low <= high)
    mid = (low+high)/2
    if (mid**2) <= a && ((mid+1)**2) > a
      return mid
    elsif (mid**2) > a
      high = mid - 1
    elsif (mid**2) < a
      low = mid + 1
    end
  end
end




def test
  # a = [1, 1, 2, 2, 3]
  # a = [5, 11, 11, 100, 100]
  a = [1,1,2,3,3,4,4,8,8]
  l = 0
  h = a.size - 1

  while (l <= h)
    m = (l + h)/2
    return a[m] if (a[m] != a[m+1]) && (a[m] != a[m-1])

    if a[m] == a[m + 1]
      if m.odd?
        h = m
      else
        l = m + 2
      end
    elsif a[m] == a[m - 1]
      if m.odd?
        l = m + 1
      else
        h = m - 1
       end
    end
  end
end


def fact(n)
  if n == 1
    1
  else
    n * fact(n-1)
  end
end






  a =[   [5, 17, 100, 111],
            [119, 120,  127,   131] ]
  b = 3



def test(a, b)

  m = a.size
  n = a.first.size

  low = 0
  high = m -1

  # find row
  while(low <= high)
    mid = (low+high)/2
    if b >= a[mid][0] && b <= a[mid][n-1]
      arr = a[mid]
      break
    end

    if b > a[mid][0]
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return 0 if arr.nil?


  low = 0
  high = n -1

  # find element
  while (low <= high)
    mid = (low+high)/2
    return 1 if arr[mid] == b

    if arr[mid] > b
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return 0
end










    # Search for a Range
    # Given a sorted array of integers A(0 based index) of size N, find the starting and ending position of a given integar B in array A. Your algorithm's runtime complexity must be in the order of O(log n). Return an array of size 2, such that first element = starting position of B in A and second element = ending position of B in A, if B is not found in A return [-1, -1].
    # Input Format
    # The first argument given is the integer array A.
    # The second argument given is the integer B.
    # Output Format
    #  Return an array of size 2, such that first element = starting position of B in A and second element = ending position of B in A, if B is not found in A return [-1, -1].
    # Constraints
    # 1 <= N <= 10^6
    # 1 <= A[i], B <= 10^9
    # For Example
    # Input 1:
    #     A = [5, 7, 7, 8, 8, 10]
    #     B = 8
    # Output 1:
    #     [3, 4]
    # Explanation 1:
    #     First occurence of 8 in A is at index 3
    #     Second occurence of 8 in A is at index 4
    #     ans = [3, 4]

    # Input 2:
    #     A = [5, 17, 100, 111]
    #     B = 3
    # Output 2:
    #     [-1, -1]
    # @param A : tuple of integers
    # @param B : integer
    # @return a list of integers


  a = [5, 7, 7, 8, 8, 10]
  b = 8


a = [1]
b = 1

def xyz(a, b)
  first = search(a, b, true)
  second = search(a, b, false)

  if first.nil?
    [-1, -1]
  elsif first.zero? && second.zero?
    [0, 0]
  else
    [first, second]
  end
end



def search(a, b, first_search)
  low = 0
  high = a.size - 1

  while (low <= high)
    mid = (low+high)/2
    if a[mid] == b
      # return mid
      result = mid
      if first_search
        high = mid - 1
      else
        low = mid + 1
      end
    elsif a[mid] < b
      low = mid + 1
    else
      high = mid - 1
    end
  end
  result
end








a = [4, 5, 6, 7, 0, 1, 2, 3]
b = 4


def test(a, b)
  low = 0
  high = a.size - 1

  while (low <= high)
    mid = (low + high) / 2

    if a[mid] == b
      return mid
    elsif a[mid] >= a[high]
      if a[mid] > b && b >= a[high]
        high = mid - 1
      else
        low = mid + 1
      end
    else
      if a[mid] <= b
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
  - 1
end






def longest_common_prefix(strs)
  return "" if strs.size == 0
  sorted = strs.sort
  a = sorted[0]; b = sorted[sorted.length - 1]
  i = 0
  char = ""
  while ( i < a.length && a[i] == b[i])
    char = a[0..i]
    i += 1
  end
  char
end





def longestCommonPrefix(a)
  sorted = a.sorted
  x = sorted[0]; y = sorted[a.size-1]

  i = 0
  char = ''
  while (i < x.size && x[i] == y[i])
    char = x[0..i]
    i += 1
  end
  char
end




a = "ABEC"

a = a.downcase

vowel = %[a e i o u]
sum = 0

a.chars.each_with_index do |ch, idx|
  if vowel.include? ch
    sum += 1
    sum += (a.size - (idx+1))
  end
end
sum % 10003




x = 'banana'

sum = 0

for i in 0..(x.size-1)
  if x == x.reverse || x.empty?
    break
  else
    x[-1] = ''
    sum += 1
  end
end



# y.chars.each_with_index do |ch, idx|
#   if y == y.reverse
#     break
#   else
#     y[idx] = ''
#     sum += 1
#   end
# end



a = "XIV"


hash = {"I"=> 1, "V"=> 5, "X"=> 10, "L"=> 50, "C"=> 100, "D"=> 500, "M"=> 1000}
roman_val = ["I", "V", "X", "L", "C", "D", "M"]

sum = 0
for i in 0..(a.size-1)
  # find next roman_val
  binding.pry
  next_val = roman_val.find_index(a[i]) - 1

  if a[i+1] == roman_val[next_val]
    sum += hash[a[i]]
  else
    sum -= hash[a[i]]
  end
end
sum





sum = 0
for i in 0..(a.size-1)
  next_val = hash[a[i+1]] || 0

  if hash[a[i]] >= next_val
    sum += hash[a[i]]
  else
    sum -= hash[a[i]]
  end
end






x = 'PAYPALISHIRING'


def convert(a, b)

  n = b
  arr = Array.new(b) {Array.new(b)}

  dir = 'down'
  row_min = 0
  min = 0
  max = n - 1

  for i in 0..(a.length-1)
    if dir == 'down'
      arr[row_min][i] = a[i]
      row_min += 1
      if row_min > max
        row_min -= 1
        dir = 'up'
        next
      end
    end

    if dir == 'up'
      row_min -= 1
      arr[row_min][i] = a[i]
      if row_min <= min
        row_min += 1
        dir = 'down'
        next
      end
    end
  end
  arr.flatten.compact.join
end

# n = 3
# a = Array.new(n) {Array.new(n)}

# dir = 'down'
# row_min = 0
# min = 0
# max = n - 1

# for i in 0..(x.length-1)
#   if dir == 'down'
#     a[row_min][i] = x[i]
#     row_min += 1
#     if row_min > max
#       row_min -= 1
#       dir = 'up'
#       next
#     end
#   end

#   if dir == 'up'
#     row_min -= 1
#     a[row_min][i] = x[i]
#     if row_min <= min
#       row_min += 1
#       dir = 'down'
#       next
#     end
#   end
# end





a = [0, 2, 5, 7]

min = 2**32

for i in 0..(a.size-1)
  xor = a[i] ^ a[i+1] if a[i+1]
  if xor < min
    min = xor
  end
end
min



x = "0"*32
s = a.to_s(2)

for i in 0..(s.size-1)
  x[i] = s[i]
end
x.to_i(2)





def singleNumber(a)
    return nil if a.nil? or a.empty?
    ans = a[0]
    i = 1
    while i < a.size do
        ans = ans ^ a[i]
        i += 1
    end
    return ans
end



d = gets.chomp.to_i
o = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

online = o[0] + (d-o[1]) * o[2]
classic = c[1] + (d/4) * c[2] + d * c[3]

online <= classic ? 'Online Taxi' : 'Classic Taxi'








def test(x)
  return false if x == 0
  x & (x-1) == 0
end









a = 48

b = []
while(a/2 != 0)
  a = a/2
  b << a%2
end







set = ['a', 'b', 'c']
size = 3
pow_set = 2**size

x = []

for i in 0..pow_set do
  y = []
  for j in 0..size do
    # p "i=>#{i}, j=>#{j}"
    y << set[j] if ((i & (1 << j)) != 0)
  end
  x << y
end




a = [1, 0, 0, 0, 1]


a[2..4]












a = [1, 3, 3, 2, 4]

a = a.sort

count = 0; j = 0
for i in 0..(a.length-1)
  if a[j] != a[i]
    j += 1
    count+=1
  end
end











a = [1, 2, 3, 4, 5, 5, 3, 4]


# a = [1000, 2]
# a = a.sort
# b = []

# for i in 0..(a.size-1)
#   b << a[i..i+1] if a[i+1] && a[i] == a[i+1]
# end

# a-b.flatten

hash = Hash.new(0)
a.each{|x| hash[x]+=1}
hash.select{|k,v| p k if v==1}






a = [[1, 2, 3], [4, 5, 6]]

# a.each {|x| x.reverse}


def reverse_sort(a)
  x = []
  a.each do |arr|
    x << mergesort(arr)
  end
  x
end


def mergesort(arr)
  return arr if arr.size == 1

  mid = arr.size/2
  left = mergesort(arr[0...mid])
  right = mergesort(arr[mid...arr.size])
  merge(left, right)
end

def merge(left, right)
  # reverse sorting
  sorted = []
  until left.empty? || right.empty?
    if right.first <= left.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(right).concat(left)
end







a = [1, 3, 5]

count = 0
for i in 0..(a.size-1)
  for j in 0..(a.size-1)
    xor = a[i] ^ a[j]

    val = 0
    while(xor!=0)
      xor = xor&(xor-1)
      val += 1
    end
    count += val
  end
end
count









count = 0
n = a.size
for i in 0..31
  set_bit = 0
  for j in 0..n-1
    # find all the set bits in 32 bit number, if set increment the set bit value
    set_bit += 1 if (a[j] & (1 << i)) > 0
  end

  # set_bit -> no of 1's, (n-set_bit) -> no of 0's
  count += set_bit*(n-set_bit)*2
end
count % (10**9+7)








    def cntBits(a)
        sum = 0
        n = a.size
        mod = (10 ** 9) + 7
        for i in 0..31 do
            count = 0
            for j in 0..n - 1 do
                binding.pry
                if (a[j][i] == 1)
                    count += 1
                end
            end

            sum += (count * (n - count) * 2)
            sum = sum % mod
        end
        return sum
    end





a = 10
b = 20

count = 0
for i in 0..31
  if (a & (1<<i)) != (b & (1<<i))
    count += 1
  end
end
count





























