def say(msg)
  puts "\n=> #{msg}"
end

def validate_number(input)
  input =~ /[0-9]/
end

def retrieve_number(number, numbers)
  numbers << number if validate_number(number)
end

def get_numbers
  numbers = []
  loop do
    say "Please enter your first number: "
    break if retrieve_number(gets.chomp, numbers)
  end
  loop do
    say "Please enter your second number: "
    break if retrieve_number(gets.chomp, numbers)
  end
  numbers
end

def operation
  say "Available operations"
  puts "[1] + [2] - [3] * [4] /"
  loop do
    say "Please enter the number of the operation you want to perform: "
    operator = gets.chomp
    return operator if validate_number(operator)
  end
end

def calculate(numbers, operator)
  case operator.to_i
  when 1
    numbers.first.to_i + numbers.last.to_i
  when 2
    numbers.first.to_i - numbers.last.to_i
  when 3
    numbers.first.to_i * numbers.last.to_i
  when 4
    numbers.first.to_i / numbers.last.to_f
  else
    "Please enter a valid operation!"
  end
end

loop do
  numbers     = get_numbers
  operator    = operation

  say "Your calculation:"
  puts calculate(numbers, operator)

  say "Would you like to perform another calculation? [Y/N]"
  break if gets.chomp.downcase != "y"
end

