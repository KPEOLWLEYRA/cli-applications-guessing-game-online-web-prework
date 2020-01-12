# # Code your solution here!
# require "pry"

def generate_num
  num = rand(1..6)
  num
end

def guess_ask
  puts "Guess a number between 1 and 6"
end
  
def prompt_input
  gets.chomp
end
  
def check_num(number, input)
  numberr = number.to_s
  inputt = input.to_s
  
  if inputt == numberr
    puts "/You guessed the correct number!/"
  elsif inputt == "exit"
    puts "Goodbye!"
  else 
    puts "/Sorry! The computer guessed #{number}./"
  end
end

def run_guessing_game
  guess_ask
  num = generate_num
  input= prompt_input
  check_num(num, input)
end


# def run_guessing_game
#   num = rand(5) + 1 

#   puts "Guess a number 1 to 6"
  
#   input = gets.chomp
  
#   if input == num.to_s
#     puts "/You guessed the correct number!/"
#   elsif input == "exit"
#     puts "Goodbye!"
#   else
#     puts "/Sorry! The computer guessed #{num}./"
#   end
  
# end

