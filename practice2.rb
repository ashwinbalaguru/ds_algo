a = 3245

def test(a)
  list = a.to_s.split('').map(&:to_i)
  dups = list.select{|e| list.count(e)>1}
  return false unless dups.empty?
  return true if a.size == 1
  val = []
  n = list.size

  for i in 0..(n-1)
    prod = 1
    for j in i..(n-1)
      prod = prod * list[j]
      val << prod unless list[i] == list[j]
    end
  end

  p val
  i = 0
  while(i<val.size)
    # false -0
    return false if list.include? val[i]
    i+=1
  end
  # true - 1
  return true
end



def test(a)
  list = a.to_s.split('').map(&:to_i)
  val = []
  n = list.size

  for i in 0..(n-1)
    prod = 1
    for j in i..(n-1)
      prod = prod * list[j]
      if val.include? prod
        return false
      else
        val << prod
      end
    end
  end
  true
end




a = [1 ,2 ,-2 ,4 ,-4]

def test(a)
  n = a.size
  seq = []

  for i in 0..(n-1)
    sum = 0
    for j in i..(n-1)
      sum += a[j]
      if sum == 0 && seq.size < a[i..j].size
          seq = a[i..j]
      end
      # p a[i..j] if sum == 0
    end
  end
  seq
end




def test(a)
  a = a.sort
  min = 0; max = a.size-1
  sum = []

  while(min<=max)
    p "min-#{min}, max-#{max}"
    sum = a[min..max].inject(&:+)
    if sum > 0
      max -= 1
    else
      min += 1
    end
  end
end


a = [1 ,2 ,-2 ,4 ,-4]
def test(a)
  n = a.size
  hash_map = []
  hash = {}
  sum = 0
  max =
  seq = []

  for i in 0..(n-1)
    sum += a[i]

    if sum == 0
      seq = a[0..(i)]
      max = i+1
    end

    if hash_map.include? sum
      max = i
      # j = hash_map.find_index(sum)
      j = hash[sum]
      seq = a[(j)..i] if seq.size < a[(j)..i].size
    else
      hash_map << sum
      hash[sum] = (i+1)
    end
  end
  p hash_map
  p hash
  seq
end



a = [1 ,2 ,-2 ,4 ,-4]
def test(a)
  n = a.size
  # hash_map = []
  hash = {}
  sum = 0
  seq = []

  for i in 0..(n-1)
    sum += a[i]

    if sum == 0
      seq = a[0..(i)]
      max = i+1
    end

    if hash.include? sum
      max = i
      # j = hash_map.find_index(sum)
      j = hash[sum]
      seq = a[(j)..i] if seq.size < a[(j)..i].size
    else
      hash[sum] = (i+1)
    end
  end
  p hash
  seq
end





a = [2, 7, 11, 15]
b = 9



sum = 0
val = []

for i in 0..(a.size-1)
  sum = 0
  for j in i..(a.size-1)
    next if i == j
    sum = a[i] + a[j]
    if sum == b
      if val.empty? || (j+1) < val[1]
        val = [i+1, j+1]
      end
    end
  end
end
val




a = [2, 7, 11, 15]
b = 9

def twoSum(a, b)
  val = []
  hash = {}
  hash1 = {}
  final = []

  for i in 0..(a.size-1)
    target = b - a[i]
    # t_idx = a.find_index(target)
    hash[a[i]] = target
    hash1[i] = a.find_index(target)
    final << [i, a.find_index(target)]
    # if t_idx
    #   hash[t_idx] = i
    #   # val = [i+1, t_idx+1]
    #   # return val
    # end
  end
  # val
  p "hash-> #{hash}"
  p "hash1->#{hash1}"
  p "final->#{final}"

  # [hash1.min_by{|k, v| v unless v.nil?}]
  # hash1.select{|k, v| !v.nil?}

end


a = [2, 7, 11, 15]
b = 9
def twoSum(a, b)
  hash = {}
  val = []
  for i in 0..(a.size)
    target = b - a[i]

    idx = hash[target]
    if idx
      val = [idx+1, i+1]
      return val
    elsif hash[a[i]].nil?
      hash[a[i]] = i
    end
  end
  val
end






a = [1, 0, -1, 0, -2, 2]
b = 0


def fourSum(a, b)
  n = a.size-1
  val = []

  for i in 0..n
    sum = 0
    for j in 0..n
      next if i==j
      for k in 0..n
        next if i == k || j == k
        for l in 0..n
          next if i == l || j == l || k == l
          sum = a[i] + a[j] + a[k] + a[l]
          push = [a[i], a[j], a[k], a[l]].sort
          val << push if sum == b && !(val.include? push)
        end
      end
    end
  end
  val
end



a = [1, 0, -1, 0, -2, 2]
b = 0



def fourSum(a, b)
  a = a.sort
  n = a.size-1
  hash = {}
  val = []

  for i in 0..n
    sum = 0
    for j in 0..n
      next if i == j
      sum = a[i] + a[j]
      hash[sum] = [a[i], a[j]]
      p "hash-> #{hash}"

      target_sum = b - sum
      # p "sum->#{sum}"
      # p "target_sum-> #{target_sum}"
      if hash[target_sum] && (hash[sum].sort != hash[target_sum].sort)
        push = [hash[sum], hash[target_sum]].flatten.sort
        val << push unless (val.include? push)
        # p "t -> #{hash[target_sum]}"
      end
    end
  end
  val
end




a = [1, 0, -1, 0, -2, 2]
b = 0



def fourSum(a, b)
  a = a.sort
  n = a.size-1
  hash = {}
  val = []

  for i in 0..n
    sum = 0
    for j in 0..n
      next if i == j
      sum = a[i] + a[j]
      sum1_arr = [a[i], a[j]]
      # hash[sum] = [a[i], a[j]]

      target_sum = b - sum

      k = j+1
      m = a.size-1
      while (k<m)
        sum2 = a[k] + a[m]
        binding.pry
        if sum2 < target_sum
          k = k + 1
        elsif sum2 > target_sum
          m = m - 1
        elsif sum2 == target_sum
          sum2_arr = [a[k], a[m]]
          break
        end
        # binding.pry
      end
      p val
    end
    val << [sum1_arr, sum2_arr].flatten
  end
  val
end



def isValidSudoku(a)
  valid_hash = {}

  for i in 0..8
    for j in 0..8
      next if a[i][j] == '.'
      if valid_hash.include? [a[i][j], i, 'r']
        return 0
      end

      if valid_hash.include? [a[i][j], j, 'c']
        return 0
      end

      if valid_hash.include? [a[i][j], i/3, j/3]
        return 0
      end

      valid_hash[[a[i][j], i, 'r']] = 1
      valid_hash[[a[i][j], j, 'c']] = 1
      valid_hash[[a[i][j], i/3, j/3]] = 1
    end
  end
  return 1
end






a = [1, 5, 3]
b = 2

def test(a, b)
  for i in (a.size-1).downto(0)
    for j in (a.size-1).downto(i)
      diff = a[i] - a[j]
      p diff
      return 1 if diff.abs == b && i != j
    end
  end
  0
end


a = [1, 5, 3]
b = 2


def test(a, b)
  return false if a.size == 1
  hash = {}

  for i in 0..(a.size)
    if a[i]
      target = a[i] - b
      hash[a[i]] = i
    end

    p hash
    binding.pry
    if hash.include? target.abs && hash[target.abs] != i
      return true
    end
  end
  false
end




def test(a, b)
  return false if a.size == 1

  n = a.length
  hash = {}

  for i in 0..n-1
    target1 = a[i] - b
    target2 = a[i] + b

    if hash.include? target1.abs || hash.include? target2.abs
      return true
    else
      hash[a[i]] = i
    end
  end
  false
end




def test(a, b)
  return 0 if a.size == 1

  n = a.length
  val = []

  for i in 0..n-1
    target1 = a[i] - b
    target2 = a[i] + b

    if (val.include? target1) ||( val.include? target2)
      return 1
    else
      val << a[i]
    end
  end
  0
end







a = ["cat", "dog", "god", "tca"]

def test(a)
  n = a.size
  hash = {}
  val = []

  for i in 0..n-1
    word = a[i].split('').sort
    if hash.include? word
      hash[word] << (i+1)
    else
      ch = a[i].split('').sort
      hash[ch] = [i+1]
    end
  end
  hash.values
end





# a = [3, 4, 7, 1, 2, 9, 8]

def test(a)
  hash ={}
  val = []

  for i in 0..(a.size-1)
    for j in i..(a.size-1)
      sum = a[i] + a[j]
      if hash.include? sum
        val << hash[sum] + (i, j)
      else
        hash[sum] = [i, j]
      end
    end
    hash
  end
  val
end




a = 'dadbc'

def test(a)
  hash = {}
  val = []
  n = a.size-1

  for ch in 0..n
    e = ch
    hash[ch] = ''
    while e<=n
      break if hash[ch].include? a[e]
      if hash[ch].size < a[ch..e].size
        hash[ch] = a[ch..e]
      end
      e += 1
    end
  end
  p hash
  # val.map{|v| v.size}.max
end


a = 'dadbc'

def test(a)
  hash = {}
  i = 0; j = a.size-1

  while(i<=j)

  end
end






def reverse(a)
  sign = a > 0 ? 1 : -1
  num = 0
  a = a.abs
  while a>0
    num = num *10
    num = num + (a%10)
    a = a/10
  end

  return 0 if num > 2**31
  num*sign
end













arr =

["Selfie Stick,98,29",
"iPhone Case,90,15",
"Fire TV Stick,48,49",
"Wyze Cam,48,25",
"Water Filter,56,49",
"Blue Light Blocking Glasses,90,16",
"Ice Maker,47,119",
"Video Doorbell,47,199",
"AA Batteries,64,12",
"Disinfecting Wipes,37,12",
"Baseball Cards,73,16",
"Winter Gloves,32,112",
"Microphone,44,22",
"Pet Kennel,5,24",
"Jenga Classic Game,100,7",
"Ink Cartridges,88,45",
"Instant Pot,98,59",
"Hoze Nozzle,74,26",
"Gift Card,45,25",
"Keyboard,82,19"]

val = []
arr.each do |prod|
  val << prod.split(',')
end


x = val.sort{|a,b|
  a[1].to_i == b[1].to_i ? a[2].to_i <=> b[2].to_i : a[1].to_i <=> b[1].to_i
}.reverse




# for i in 0..(arr.size-1)
#   break unless val[i+1]
#   val[i], val[i+1] = val[i+1], val[i] if val[i+1][1].to_i > val[i][1].to_i
# end


# hash = {}

# val.each do |v|
#   hash[v[1].to_i] = v
# end

# sorted = hash.sort.reverse
































