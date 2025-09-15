def fib(n)
    return [] if n == 0
    return [0] if n == 1
    arr = [0,1]
    while arr.length < n
        arr << arr[-1] + arr[-2]
    end
    arr


def isPalindrome(n)
str = n.to_s  
if str.reverse == str
    return true
else 
    return false

end

def nthmax(n, a)
   return nil if n < 0
   sortarr = a.sort
   index = -1 - n
   return nil if sortarr.empty? || index.abs > sortarr.length #we have to include the or operator because if the array is empty, index will be -1 and abs(-1) > 0 is true so it'll return nill 
   return sortarr[index]
   

   sortarr[index]

end

def freq(s)
  return "" if s == ""
  counts = {}
  for i in 0...s.length
    cha = s[i]
    if counts.key?(cha)
      counts[cha] = counts[cha] + 1
    else
      counts[cha] = 1
    end
  end
  max_cha = nil
  max_count = -1
  counts.each do |cha, cnt|
    if cnt > max_count
      max_count = cnt
      max_cha = cha
    end
  end
  max_cha
end


def zipHash(arr1, arr2)
   return nil if arr1.length != arr2.length # I have this here in case the length of the arras don't match
   final = {} #initializes my empty hash
   for i in 0...arr1.length 
    1 = arr1[i] # for the key
    2 = arr2[i] 
    final[1] = 2
   end
   final
end

def hashToArray(hash)
arr = []
hash.each do |key, value|
    pair = [key, value]
    arr << pair
end
arr
end

