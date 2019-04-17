def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = 1 + rand(11)
end

def display_card_total(card_total)
  "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(card_total)
  "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  cardSum
  times.2
    deal_card
    cardSum += deal_card
  display_card_total(cardSum)
end

def hit?(num)
  prompt_user
  playerDecision = get_user_input
  if playerDecision == 'h'
    newCard = deal_card
    
  else playerDecision == 's'
    
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
