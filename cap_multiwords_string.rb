# capitalizes each word using .map

def letter_capitalize(string)
  words = string.split(' ')
  words.each.map(&:capitalize!)
  words.join(' ')
end

puts letter_capitalize('muffins apples bananas')
