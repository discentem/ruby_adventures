if ARGV.length.nonzero?
  file_name = ARGV.first
  text = open(file_name)

  puts "Here is #{file_name}: "
  print text.read

  text.close
end
