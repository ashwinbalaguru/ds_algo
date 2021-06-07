a = [1, 2, 3, 3, 4, 5, 6]
b = [3, 3, 5]


# a = [1, 3, 8, 10, 13, 13, 16, 16, 16, 18, 21, 23, 24, 31, 31, 31, 33, 35, 35, 37, 37, 38, 40, 41, 43, 47, 47, 48, 48, 52, 52, 53, 53, 55, 56, 60, 60, 61, 61, 63, 63, 64, 66, 67, 67, 68, 69, 71, 80, 80, 80, 80, 80, 80, 81, 85, 87, 87, 88, 89, 90, 94, 95, 97, 98, 98, 100, 101]
# b = [5, 7, 14, 14, 25, 28, 28, 34, 35, 38, 38, 39, 46, 53, 65, 67, 69, 70, 78, 82, 94, 94, 98]


# f1, f2 = a.size > b.size ? [b, a] : [a, b]
final = []
b_dup = b.dup

for i in 0..(a.size-1)
  for j in 0..(b.size-1)
    p b_dup
    if a[i] == b_dup[j]
      final << b_dup[j]
      b_dup[j] = 0
    end
  end
end

final


# f1.each do |num|
#   f2.find {|val| final << val if num==val}
# end

# final


a = [1, 2, 3, 3, 4, 5, 6]
b = [3, 3, 5]

final = []
j = 0
for i in 0..(a.size-1)
  while(j <= b.size-1)
    if a[i] == b[j]
      final << b[j]
      j +=1
    end
  end
end

final





final = []
for i in 0..(a.size-1)
  j = b.size-1
  while(j>=0)
    if a[i] == b[j]
      final << b[j]
    end
    j -= 1
  end
end
final





final = []
for i in 0..(a.size-1)
  j = 0
  while(j <= b.size-1)
    if a[i] < a[j]

    end


    if a[i] == b[j]
      final << b[j]
      b = b.shift
    end
    j += 1
  end
end
final







final = []
i = 0; j= 0
while(i < (a.size) && j < (b.size))
  if a[i] < b[j]
    i += 1
  elsif a[i] > b[j]
    j += 1
  else
    final << a[i]
    i += 1
    j += 1
  end
end
final








a = [4,2,1,3].sort

min = 2**32
min_list = []

for i in 0..(a.size-1)
  j = i+1
  while (j<(a.size))
    if (a[j] - a[i]) < min
      if !min_list.empty?
        min_list = []
      end
      min = (a[j] - a[i])
      min_list << [a[i], a[j]]
    elsif (a[j] - a[i]) == min
        min_list << [a[i], a[j]]
    end
    j+=1
  end
end
min_list



a = [4,2,1,3].sort

min = 2**32
min_list = []

for i in 0..(a.size-1)
  j = i + 1
  break if a[j].nil?
  if (a[j] - a[i]) < min
    min = (a[j] - a[i])
    min_list = [[a[i], a[j]]]
  elsif (a[j] - a[i]) == min
     min_list <<  [a[i], a[j]]
  end
end
min_list






  # for j in i..(arr.size-1)
  #   if (a[j] - a[i]) < min
  #     min_list = [] unless min_list.empty?
  #     min = (a[j] - a[i])
  #     min_list << [a[i], a[j]]
  #   end
  # end



a = [[1, 2, 3, 4], [5, 6, 7]]
n = a.size
for i in 0..(a.size-1)
  a[i] ^= a[(n-1)-i]
  a[(n-1)-i] ^= a[i]
  a[i] ^= a[(n-1)-i]
end






la = a.size-1
lb = b.size-1
lc = c.size-1

i = 0; j = 0; k = 0

min_diff = 2**32

while(i <= la && j <= lb && k <= lc)
  min_ele = [a[i], b[j], c[k]].min
  max_ele = [a[i], b[j], c[k]].max
  curr_diff = (max_ele - min_ele).abs
  min_diff = [min_diff, diff].min

  if a[i] == min_ele
    i += 1
  elsif b[j] == min_ele
    j += 1
  else
    k += 1
  end
end
min_diff








a = [2, 1, 5, 3, 4]

def test(a)
  count = 0

  for i in 0..(a.size-1)
    if a[i] <= (i+3)
      if a[i] < i+1
        count+= ((i+1) - a[i])
      end
    else
      return 'Too chaotic'
    end
  end
  count
end





ma = a.size-1
mb = b.size-1
mc = c.size-1

min_diff = ([a[ma], b[mb], c[mc]].max - [a[ma], b[mb], c[mc]].min).abs

while(ma >= 0 && mb >= 0 && mc >= 0)
  max_val = [a[ma], b[mb], c[mc]].max
  min_val = [a[ma], b[mb], c[mc]].min

  curr_diff = (max_val - min_val).abs
  min_diff = [curr_diff, min_diff].min

  if a[ma] == max_val
    ma -= 1
  elsif b[mb] == max_val
    mb -= 1
  else
    mc -= 1
  end
end
min_diff





a = [-1, 2, 1, -4]
b = 1


a = a.sort
c = 2**32
arr = []

for i in 0..(a.size-1)
  sum = a[i..(i+2)].inject(&:+)
  arr << sum


  # p "sum=> #{sum}"
  # if sum <= (c - b).abs
  #   c = sum
  #   final = a[i..(i+2)]
  # end
  # p "c=> #{c}"
end

# sum

b = -1

a = a.sort

def test(a, b)
  arr = []
  for i in 0..(a.size-1)
    for j in 0..(a.size-1)
      next if i == j
      for k in 0..(a.size-1)
        next if j == k || i == k
        sum = a[i] + a[j] + a[k]
        return sum if sum == b
        p "#{a[i]}, #{a[j]} #{a[k]}"
        p "#{sum}"
        p "------------------------"
        arr << sum
      end
    end
  end

  val = arr.group_by{|x| x<=>b}
  val[-1].last || val[1].first
end




def test(a, b)
  a = a.sort
  return -1 if a.size < 3

  min_diff = (a[0] + a[1] + a[2] - b).abs
  best = a[0] + a[1] + a[2]

  for i in 0..(a.size-1)
    # j = i + 1
    for j in (i+1)..(a.size-1)
      # k = j + 1
      for k in (j+1)..(a.size-1)
        new_diff = (a[i] + a[j] + a[k] - b).abs
        if new_diff < min_diff
          min_diff = new_diff
          best = a[i] + a[j] + a[k]
        end
      end
    end
  end
  best
end



def threeSumClosest(a, b)
  a = a.sort
  return -1 if a.size < 3

  min_diff = (a[0] + a[1] + a[2] - b).abs
  best = a[0] + a[1] + a[2]

  for i in 0..(a.size-1) do
    f = a[i]
    j = i + 1
    k = a.size-1

    loop do
      break if j >= k
      s = a[j]
      t = a[k]
      new_diff = (f+s+t-b).abs
      if new_diff < min_diff
        min_diff = new_diff
        # best = f+s+t
      end

      sum = (f+s+t)
      if sum < best
        best = sum
        k -= 1
      else
        j += 1
      end
    end
  end
  min_diff
end


  for i in 0..(a.size-1) do

    f = a[i]
    s_idx = i + 1
    l_idx = a.size-1
    loop do
      break if s_idx >= l_idx

      s = a[s_idx]
      t = a[l_idx]
      sum = f + s + t
      if (sum-b).abs < min_diff
        min_diff = (sum-b).abs
      end

      if sum <= best
        best = sum
        l_idx -= 1
      else
        s_idx += 1
      end
    end

  end
  min_diff
end


a = [-1, 0, 1, 2, -1, -4]

def threesum(a)
  return nil if a.size < 3
  a = a.sort

  final = []
  for i in 0..(a.size-1)
    for j in (i+1)..(a.size-1)
      for k in (j+1)..(a.size-1)
        sum = a[i] + a[j] + a[k]
        final << [a[i], a[j], a[k]] if sum == 0
      end
    end
  end
  final.uniq
end




def threeSum(a)
  return nil if a.size < 3
  a = a.sort

  final = []

  for i in 0..(a.size-3)
    f = a[i]
    j = i + 1
    k = a.size-1

    while(j<k)
      sum = a[i] + a[j] + a[k]
      if sum == 0
        final << [a[i], a[j], a[k]]
      end

      if sum < 0
        j += 1
      else
        k -= 1
      end
    end
  end
  final.uniq
end





def nTrang(a)
  a = a.sort
  count = 0
  for i in 0..(a.size-1)
    for j in (i+1)..(a.size-1)
        for k in (j+1)..(a.size-1)
        p "i=> #{i}, j=> #{j}, k=>#{k}"
        p "a[i]=> #{a[i]}, a[j]=>#{a[j]}, a[k]=> #{a[k]}"
        p "#{(a[i] + a[j] > a[k])}"
        count += 1 if a[i] + a[j] > a[k]
      end
    end
  end
  count
end



def nTrang(a)
  a = a.sort
  count = 0
  n = a.size

  for ele in 0..n-1
    left = 0
    right = ele - 1

    while (left<right)
      if (a[left] + a[right] > a[ele])
        count += right - left
        right -= 1
      else
        left += 1
      end
    end
  end
  count
end

    j = i+1
    k = a.size-1
    while(j<k)
      p "i=> #{i}, j=> #{j}, k=>#{k}"
      p "a[i]=> #{a[i]}, a[j]=>#{a[j]}, a[k]=> #{a[k]}"
      p "#{(a[i] + a[j] > a[k])}"
      if (a[i] + a[j] > a[k])
        count += k-j
        k -= 1
      else
        j += 1
        end
      end
    end
  end
  count
end



def nTrang(a)
  a = a.sort
  count = 0
  n = a.size

  for i in 0..(n-3)
    k = i + 2
    for j in (i+1)..(n-2)
       while (k<n && (a[i] + a[j] > a[k]))
         k += 1
       end

       count += k - j -1 if (k > j)
    end
  end
  count
end






a = [1, 1, 0, 1, 1, 0, 0, 1, 1, 1]
b = 1

def test(a, b)
  final = []
  for i in 0..(a.size-1)
    next if final.empty? && a[i] == 0
    if a[i] == 1
      final << i
    else
      if b != 0
        a[i] = 1
        final << i
        b -= 1
      end
    end
    return final if b == 0 && a[i] == 0
  end
  final
end




a = [1, 2, 3, 4, 5]
b = [2, 4, 6, 8]
c = 9

def test(a, b, c)
  i = 0
  j = b.size-1
  n = a.size-1
  diff = 2**32

  while (i <= n && j >= 0)
    curr_diff = (a[i] + b[j] - c).abs
    if curr_diff < diff
      x = i
      y = j
      diff = curr_diff
    end

    # y = j if curr_diff == diff && x == i
    if (a[i]+b[j]) > c
      j -= 1
    else
      i += 1
    end
  end
  [a[x], b[y]]
end



def test(a, b, c)

  diff = 2**32
  i = 0
  j = 0
  n = a.size-1
  m = b.size-1

  for i in 0..n
    for j in 0..m
      curr_diff = (a[i] + b[j] - c).abs
      if curr_diff < diff
        diff = curr_diff
        final = [a[i], b[j]]
        break if curr_diff == 0
      end
    end
  end
  final
end


  while(i <=n && j <= m)
    curr_diff = (a[i] + b[j] - c).abs
    if curr_diff < diff
      x = i
      y = j
      diff = curr_diff
    end

    if (a[i]+b[j]) > c
      j += 1
    else
      i += 1
    end
    return [a[x], b[y]] if [a[x], b[y]].inject(&:+) == c
  end
  [a[x], b[y]]

end






a = [1, 2, 3, 4, 5]
b = 5


count = 0
j = a.size-1
i = 0


while (i <= j && j >= 0)
  sum = a[i] + a[j]

  if sum < b
    i += 1
  elsif sum > b
    j -= 1
  else
    count += 1
    i += 1
    j -= 1
  end
end





a = [2, 3, 5]
b = 15

count = 0
i = 0
j = a.size-1
n = a.size

while (i < n && j >= 0)
  p "i=> #{i}, j=>#{j}"
  p "a[i]=> #{a[i]}, a[j]=> #{a[j]}"
  prod = a[i] * a[j]
  binding.pry
  if prod < b
    count+= (2*(j-i-1)-1)
    i += 1
  else
    j -= 1
  end
end




count = 0
i = 0
j = a.size-1

while(i <= j) do
  p "i=> #{i}, j=>#{j}"
  p "a[i]=> #{a[i]}, a[j]=> #{a[j]}"
  area = a[i] * a[j]

  if area < b
    count += (2*(j-i)+1)
    i += 1
  else
    j -= 1
  end
end
count






a = [1, 2, 3, 4, 5]
b = 5


i = 0
j = a.size-1
n = a.size-1
# final = []

while (i < n && j >=0)
  sum = a[i..j].inject(&:+)
  p "i=> #{i}, j=>#{j}"
  p "a[i..j]=> #{a[i..j]}"

  if sum < b
    i += 1
  elsif sum > b
    j -= 1
  else
    final = a[i..j]
    i += 1
    j -= 1
  end
end
final





n = 1010


x = 1

while ((n-x).to_s.split('').include? '0') || (x.to_s.split('').include? '0')
  x += 1
end
[x, n-x]




class Solution
    # @param a : head node of linked list
    # @param b : head node of linked list
    # @return the head node in the linked list
    def mergeTwoLists(a, b)
        head = ListNode.new(0)
        first = head

        while a && b
            if a.data < b.data
                head.next = a
                a = a.next
            else
                head.next = b
                b = b.next
            end
            head = head.next
        end

        while a
            head.next = a
            a = a.next
            head = head.next
        end

        while b
            head.next = b
            b = b.next
            head = head.next
        end

        first.next
    end
end



    def removeNthFromEnd(a, b)
        size = 0
        i = a

        while i do
            i = i.next
            size += 1
        end

        return a.next if b >= size

        prev = nil
        i = a

        (size - b).times do
            prev = i
            i = i.next
        end

        prev.next = i.next

        a
    end









# Definition for singly-linked list.
# class ListNode
#     attr_accessor :next,:data
#     def initialize(data)
#         @data = data
#         @next=nil
#     end
# end

class Solution
    # @param a : head node of linked list
    # @param b : integer
    # @return the head node in the linked list
    def removeNthFromEnd(a, b)
        return nil unless a.next

        curr = a
        size = 0
        while curr
            size += 1
            curr = curr.next
        end

        if size <= b
            return a.next
        end

        val = size - b
        curr = a
        x = nil

        val.times do
            x = curr
            curr = curr.next
        end

        x.next = a.next
        a
    end
end





def isValid(a)
  return 0 unless a.size % 2 == 0
  bal = []

  a.chars.each do |ch|
    p bal
    if (ch == '{') || (ch == '(') || (ch =='[')
      bal.unshift(ch)
    end

    if bal.empty?
      return 0
    end

    if ch == '}'
      if bal[0] == '{'
        bal.shift
      else
        return 0
      end
    end

    if ch == ')'
      if bal[0] == '('
        bal.shift
      else
        return 0
      end
    end

    if ch == ']'
      if bal[0] == '['
        bal.shift
      else
        return 0
      end
    end
  end
  p bal
  bal.empty? ? 1 : 0
end



Just like we do it in Linux…any /a implies you are entering into that directory
and /… implies you are leaving that directory
so whenever you encounter a /
Run a Loop until you encounter next /
while running this loop keep adding all the elements you get
so for example take, /a/b/…/…/c
you have entered into directories a and b and on /… you pop out b and /… you pop out a
and rest you have /c which is your answer
look out for cases where /. and // is involved…in these cases ignore the /. and //



a = "/a/./b/../../c/"
a = "/home//foo/"
a = "/../"


st = []

val = a.split('/')

val.each do |v|
  if !v.empty? && v != '.' && v != '..'
    st.unshift("/#{v}")
  elsif v == '..'
    st.shift
  end
end
x = st.reverse.join
x.empty? ? '/' : x

# val = a.split('/')[-1]
# val.match(/[a-zA-Z]/) ? ( "/" + val) : "/"



a = "((a + b))".delete(' ')


st = []

a.chars.each do |ch|
  can_pop = false
  st.push(ch) if ch == '('

  while (ch != '(')
    if ch != ')'
      can_pop = true if (ch == '+') || (ch == '-') || (ch == '*') || (ch == '/')
    end
    break
  end
  st.pop if can_pop
end
st.empty? ? 0 : 1






a = [4, 5, 2, 10, 8]

g = []
for i in 0..(a.size-1) do
  pushed = false
  p a[i]
  for j in (i-1).downto(0) do
    if a[j] < a[i]
      pushed = true
      g.push(a[j])
      break
    end
  end
  g.push(-1) if pushed == false
  p "------"
end
g





    S = list()

    # Traverse all array elements
    for i in range(n):

        # Keep removing top element from S
        # while the top element is greater
        # than or equal to arr[i]
        while (len(S) > 0 and S[-1] >= arr[i]):
            S.pop()

        # If all elements in S were greater
        # than arr[i]
        if (len(S) == 0):
            print("_, ", end = "")
        else: # Else print the nearest
              # smaller element
            print(S[-1], end = ", ")

        # Push this element
        S.append(arr[i])




a = [4, 5, 2, 10, 8]

g = []
s = []

for i in 0..(a.size-1)
  while !s.empty? && s[-1] >= a[i]
    s.pop
  end
  if s.empty?
    g.push(-1)
  else
    g.push(s[-1])
  end
  s.push(a[i])
end






bill = [3, 10, 2, 9]
k = 1
b = 12

equal_split = bill.inject(&:+)/2

skipped = bill.delete_at(k)
anna_share = skipped.inject(&:+)/2

diff = equal_split - anna_share
anna_share == b ? 'Bon Appetit' : diff








a = ["2", "1", "+", "3", "*"]

a = ["5"]

x = []
final = nil
return a[1].to_i if a.size == 1

a.each do |val|
  if val.to_i.to_s == val
    x.push(val.to_i)
  else
    second = x.pop
    first = x.pop
    final = (first).method(val).(second)
    x.push(final)
  end
end
final





class Solution
    # @param a : array of integers
    # @return an array of integers
    def prevSmaller(a)
        g = []
        for i in 0..(a.size-1) do
          pushed = false
        #   p a[i]
          for j in (i-1).downto(0) do
            if a[j] < a[i]
              pushed = true
              g.push(a[j])
              break
            end
          end
          g.push(-1) if pushed == false
        end
        g
    end
end




g = []
for i in 0..(a.size-1)
  pushed = false
  for j in i..(a.size-1)
    if a[i] < a[j]
      pushed = true
      g.push(a[j])
      break
    end
  end
  g.push(-1) if pushed == false
end
g






# COmplexity O(n)
class Solution
    # @param a : array of integers
    # @return an array of integers
    def prevSmaller(a)
        g = []
        s = []

        for i in 0..(a.size-1)
          while !s.empty? && s[-1] >= a[i]
            s.pop
          end
          if s.empty?
            g.push(-1)
          else
            g.push(s[-1])
          end
          s.push(a[i])
        end
        g
    end
end






set_size = a.size
pow_set = 2**set_size

x = []

for i in 0..(pow_set)
  y = []
  for j in 0..(set_size)
    y << a[j] if ((i & (1<<j)) > 0)
  end
  x << y
end
x








class Solution
  def subset_list(a, idx, res)
    n = a.size-1
    @list << res.dup
    for i in (idx..n)
      res << a[i]
      subset_list(a, i+1, res)
      res.pop
    end
  end

  def subsets(a)
    n = a.size
    @list = []
    res = []
    idx = 0
    subset_list(a, idx, res)
    @list
  end

end

a = [1,2, 3]
x = Solution.new
x.subsets(a)








class Solution
  def subset(a, idx, res)
    return if @result.include? res
    @result << res.dup

    for i in (idx..a.size-1)
      res << a[i]
      subset(a, i+1, res)
      res.pop
    end
  end


  def subsetsWithDup(a)
    a = a.sort
    @result = []
    idx = 0
    res = []
    subset(a, idx, res)
    @result
  end
end




a = [1,2, 2]
x = Solution.new
x.subsetsWithDup(a)






class Solution
    def combine(a, b)
      @result = []
      list(a, b, 1, [])
      @result
    end

    def list(a, b, idx, res)
      return if res.size > b
      @result << res.dup if res.size == b
      for i in idx..a
        res << i
        list(a, b, i+1, res)
        res.pop
      end
    end
end



a = 4
b = 2
x = Solution.new
x.combine(a, b)





class Solution
    def list(a, b, idx, res)
      return if b < 0
      if b == 0
        return if @result.include? res
        @result << res.dup
        return
      end

      for i in idx..(a.size-1)
        if b - a[i] >= 0
          res << a[i]
          list(a, b-a[i], i, res)
          res.pop
        end
      end
    end


    def combinationSum(a, b)
      @result = []
      list(a, b, 0, [])
      @result
    end

end



a = [2,3,6,7]
b = 7
x = Solution.new
x.combinationSum(a, b)








class Solution
  def letterCombinations(a)
    @list = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    @result = []
    combination(a, 0, "")
    @result
  end


  def combination(a, idx, current)
    if idx == a.size
      @result << current
      return
    end

    letters = @list[a[idx].to_i]

    for i in 0..(letters.length-1)
      combination(a, idx+1, current+letters[i])
    end

  end
end

a = '23'
x = Solution.new
x.letterCombinations(a)


#     for i in idx..(a.size-1)
#       num = a[i].to_i
#       l_size = @list[num].size
#       for j in 0..(l_size-1)
#         res << @list[num][j]
#         combination(a, i+1, res, j)
#         res.pop
#         p res
#       end
#     end
#   end



#     @result << res.dup
#     for i in idx..(a.size-1)
#       res << a[i]
#       combination(a, i+1, res)
#       res.pop
#     end
#   end
# end






def generateParenthesis(a)
  return [] if  a == 0
  # Open paranthesis op
  op = 0
  # Close paranthesiss cp
  cp = 0
  generator(a, "", op, cp, [])
end

def generator(a, curr, op, cp, res)
  if cp == a
    res << curr
    return
  else
    if op < a
      generator(a, curr+'(', op+1, cp, res)
    end
    if op > cp
      generator(a, curr+')', op, cp+1, res)
    end
  end
  res
end









def generateParenthesis(a)
  return [] if  a == 0
  # Open Param op
  op = a
  # Close Params cp
  cp = 0
  generator("", op, cp, [])
end

def generator(curr, op, cp, res)
  if cp == op
    res << curr
    return
  else
    if op > 0
      generator(curr+'(', op-1, cp, res)
    end
    if cp < op
      generator(curr+'(', op, cp+1, res)
    end
  end
  res
end











class Solution

  def permute(a)
    @result = []
    generate(a, 0, a.size-1)
    @result
  end

  def generate(a, s, l)
    if s == l
      @result << a.dup
      return
    end
    for i in s..l
      a[i], a[s] = a[s], a[i]
      generate(a, s+1, l)
      a[i], a[s] = a[s], a[i]
    end
  end
end



a = [1,2,3]
x = Solution.new
x.permute(a)






















































