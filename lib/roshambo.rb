class String
  define_method(:roshambo) do

    user_choice = self.downcase()
    random_number = rand()

    if random_number < 0.34
      computer_choice = "rock"
    elsif random_number <= 0.67
      computer_choice = "paper"
    else
      computer_choice = "scissors"
    end

    if user_choice == computer_choice
      "The game is a tie!"
    elsif user_choice == "rock"
      if computer_choice == "scissors"
        "Rock beats scissors. You win!"
      else
        "Paper beats rock. Loser."
      end
    elsif user_choice == "paper"
      if computer_choice == "rock"
        "Paper beats rock. You win!"
      else
        "Scissors beat paper. Loser."
      end
    else
      if computer_choice == "paper"
        "Scissors beat paper. You win!"
      else
        "Rock beats scissors. Loser."
      end
    end
  end
end
