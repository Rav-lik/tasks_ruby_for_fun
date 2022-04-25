str = 'the quick brown fox jumps over the lazy dog'
#arr = str.split(' ')
arr = str.split(%r{\s*})
#hh = Hash.new(0)
hh2 = Hash.new(0)

#arr.each do |word|
#  hh[word] += 1
#end

arr.each do |letter|
  hh2[letter] += 1
end

#p hh
puts hh2.inspect
