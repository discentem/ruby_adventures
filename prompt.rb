def prompt(prompt: string, max_arguments: 1)

  ARGV unless ARGV.length.zero?

  print prompt + ": "
  input = $stdin.gets.chomp
  input
end
