require 'set'

def f(str)
  set = Set.new
  str.each_char do |c|
    if c >= 'a' && c <= 'z' && set.size < 26
      set.add(c)
    end
  end

  set.size == 26

end

puts f('quick brown fox jumps over the lazy dog')
