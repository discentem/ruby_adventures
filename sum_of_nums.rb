require 'time'

def odd_median(nums)
  nums[nums.length / 2]
end

def sum_list(nums)
  sum = 0
  nums.each { |num| sum += num }
  sum
end

def double_pointed_sum(nums)
  sum = 0
  (0..(nums.length / 2) - 1).each do |index|
    mirror_index = -index - 1
    sum += nums[index] + nums[mirror_index]
  end
  sum += odd_median(nums) if nums.length.odd?
  sum
end

def main(min: 1, max: 50_000)
  nums = (min..max).to_a

  start_time = Time.now
  puts "sum_list: #{sum_list(nums)}"
  elasped_time = Time.now - start_time
  puts "start_time: #{start_time}", "elasped_time: #{elasped_time}\n\n"

  start_time = Time.now
  puts "double_pointed_sum: #{double_pointed_sum(nums)}"
  elasped_time = Time.now - start_time
  puts "start_time: #{start_time}", "elasped_time: #{elasped_time}"
end

main
