def simple_adding(num)
  sum = 0
  (1..num).each { |n| sum += n }
  sum
end

puts simple_adding(5)
