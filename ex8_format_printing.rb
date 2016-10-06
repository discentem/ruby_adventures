formatter = '%{var1} ... %{var2}'

puts formatter % { var1: 1, var2: 'blarg' }
puts formatter % { var1: 2, var2: 'beers' }
var1 = 1
var2 = 'blarg'
puts "#{var1} ... #{var2}"

# puts formatter % { first: formatter, second: formatter }
