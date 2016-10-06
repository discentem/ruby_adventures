def fizzbuzz(num)
  string = ''
  string += 'fizz' if (num % 3).zero?
  string += 'buzz' if (num % 5).zero?
  string = num if string == '' # if num isn't divisible by 3 or 5
  string
end

(1..30).each do |num|
  puts fizzbuzz(num)
end
