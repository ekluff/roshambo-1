require('rspec')
require('roshambo')

describe('String#roshambo') do
  
  it('generates true if object beats argument') do
    expect(("scissors").roshambo("paper")).to(eq("Scissors beat paper. You win!"))
  end

  it('generates tie if object equals argument') do
    expect(("scissors").roshambo("scissors")).to(eq("The game is a tie!"))
  end

  it('generates false if argument beats object') do
    expect(("scissors").roshambo("rock")).to(eq("Rock beats scissors. Loser."))
  end

end
