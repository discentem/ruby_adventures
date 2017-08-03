def game_rules
  rules = {
    3 => { text: 'Fizz' },
    5 => { text: 'buzz' },
    7 => { text: 'pop' },
    11 => { text: 'crack' }
  }

  # [7].each do |num|
  #   rules[num][:override] = true
  # end

  rules
end

def fizzbuzz_override(num, rules)
  output = ''
  rules.each do |divisor, props|
    if (num % divisor).zero?
      props[:override] ? output = props[:text] : output += props[:text]
    end
  end
  output = num if output == ''
  output
end

rules = game_rules
(1..30).each do |num|
  puts fizzbuzz_override(num, rules)
end
