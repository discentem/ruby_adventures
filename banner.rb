# creates a banner around any string

def banner(input_string, symbol)
  input_length = input_string.length
  banner = symbol * (input_length + 4)
  # accounts for leading and trailing spaces, i.e. 4
  line1 = banner
  line2 = symbol + ' ' + input_string + ' ' + symbol
  line3 = banner
  puts line1, line2, line3
end

input_string = ''
if ARGV.length.nonzero?
  index = 0
  while index < ARGV.length
    input_string += ARGV[index]
    input_string += ' ' unless index == ARGV.length - 1
    # unless last arg because banner() is already adding a trailing space
    index += 1
  end
  banner(input_string, '=')
else
  print 'Enter text that you want encased in a banner, perhaps your name: '
  input = $stdin.gets.chomp
  banner(input, '=')
end
