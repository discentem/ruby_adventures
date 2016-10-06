def factorial(num)
  list = []
  (1..num).each { |i| list.push(i) }

  final = 1
  (0..list.length - 1).each do |i|
    final *= list[i]
    list[i] = list[i].to_s
    list[i] += if i != list.length - 1
                 ' x '
               else
                 ' = '
               end
  end
  list.push(final.to_s)
  list
end

ARGV.each do |arg| # provide arguments when executing script
  factorial(arg.to_i).each { |e| print e }
  puts ''
end
