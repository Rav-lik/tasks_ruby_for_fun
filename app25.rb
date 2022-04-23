dict = {
  'cat' => ['кошка', 'кот'],
  'dog' => ['собака', 'пёс'],
  'girl' => 'девушка'
}

print 'Enter word: '
input = gets.strip.downcase

puts "Translation of word: #{dict[input]}"
