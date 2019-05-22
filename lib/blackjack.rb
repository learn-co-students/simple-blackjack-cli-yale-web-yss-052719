
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current)
  prompt_user
  input = get_user_input
  if input == "s"
    current = current + 0
  elsif input == "h"
    current = current + deal_card
  else
    invalid_command
  end
  return current
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  new_sum = 0
  until new_sum > 21
    new_sum = hit?(num)
    display_card_total(new_sum)
  end
  end_game(new_sum)
end
