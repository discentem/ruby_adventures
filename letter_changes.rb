def includes_vowels(string)
  vowels = %w(a e i o u)
  vowels.include?(string)
end

def letter_changes(string)
  chars = string.split('')
  (0..chars.length - 1).each do |index|
    next unless (97..122).cover?(chars[index].ord) # a-z ordinals

    # swaps any letter for the next letter. i.e. a -> b, b -> c, etc..
    chars[index] = if chars[index] == 'z'
                     'a'
                   else
                     (chars[index].ord + 1).chr
                   end
    chars[index] = chars[index].capitalize if includes_vowels(chars[index])
  end
  chars.join('')
end

puts letter_changes('zoo')
