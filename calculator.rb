def say(msg)
  puts "\n=> #{msg}"
end

def input
  numbers = []
  say "Please input your first number: "
  numbers << gets.chomp
  say "Please input your second number: "
  numbers << gets.chomp
end

def operation
  say "Available operations"
  puts "[1] + [2] - [3] * [4] /"
  say "Please the number of the operation you want to perform: "
  input = gets.chomp
end

def calculate(numbers, operator)
  case operator.to_i
  when 1
    numbers[0].to_i + numbers[1].to_i
  when 2
    numbers[0].to_i - numbers[1].to_i
  when 3
    numbers[0].to_i * numbers[1].to_i
  when 4
    numbers[0].to_f / numbers[1].to_f
  else
    "Please enter a valid operation!"
  end
end

loop do
  numbers     = input
  operator    = operation

  say "Your calculation:"
  puts calculate(numbers, operator)

  say "Would you like to perform another calculation? [Y/N]"
  break if gets.chomp.downcase != "y"
end

