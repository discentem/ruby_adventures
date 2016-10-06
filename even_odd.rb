# determines odd or even, accounts for improper and illogical inputs
require 'colorize'

def even_or_odd(number)
  num_str = number.to_s.red
  unless number.to_f.zero? || (number.to_f % 1).zero? == false
    # .to_f returns 0 for non-numbers, such as 'a'
    # decimals can't be considered even or odd
    return "#{num_str} is even." if (number.to_i % 2).zero?
    return "#{num_str} is odd."
  end
  "Can't determine if #{num_str} is odd or even."
end

def main
  if ARGV.length.nonzero? # if parameters are passed
    ARGV.each { |number| puts even_or_odd(number) }
  else
    print 'Enter a series of numbers, delimited by spaces: '
    input = $stdin.gets.chomp.split
    input.each { |number| puts even_or_odd(number) }
  end
end

main
