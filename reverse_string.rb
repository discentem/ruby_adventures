# reverse

def reverse_string(string)
  reverse = ''

  rand_range = rand(1..3)
  case rand_range
  when 1
    reverse = string.reverse
  when 2
    (0..string.length - 1).reverse_each { |index| reverse += string[index] }
  when 3
    (0..string.length - 1).each { |index| reverse += string[-index - 1] }
  end
  reverse
end

if ARGV.length.nonzero?
  ARGV.each { |arg| print reverse_string(arg) + ' ' }
else
  print 'Enter words you want reversed, deliminated by spaces: '
  arg_list = $stdin.gets.chomp.split # converts args to list
  arg_list.each { |arg| print reverse_string(arg) + ' ' }
end
print "\n"
