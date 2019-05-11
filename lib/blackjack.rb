def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  20.times do
  return rand(1...11)
end
end


def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

display_card_total(8)



def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  # code #get_user_input here
  return gets.chomp

end


def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end



def initial_round
  # code #initial_round here

  card_one = deal_card
  card_two = deal_card

#puts "#{card_one} and #{card_two} "
total = card_one + card_two
display_card_total(total)
return total
end




def hit?(total)
  # code hit? here
  prompt_user
  drawcard = get_user_input

  case drawcard
  when 's'
    return total
  when 'h'
  keep_going = deal_card
  total += keep_going
  display_card_total(total)
  return total
else

  invalid_command
  # code invalid_command here
return total
end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  # code runner here
  welcome
  sum = initial_round
until sum > 21
  sum = hit?(sum)
end
  end_game(sum)
end
puts runner
