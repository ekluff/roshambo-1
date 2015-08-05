require('rspec')
require('roshambo')

describe('String#roshambo') do
  it('generates a random number between zero and one') do
    expect("tacocat".roshambo()).to be > 0
    expect("tacocat".roshambo()).to be < 1
  end

  it('generates rock if a random number is between 0 and .33; scissors if between
  .34 and .66; paper if greater than .67') do
    rand_num = rand()
    if rand_num < 0.34
      expect("tacocat".roshambo()).to(eq("rock"))
    elsif rand_num >= 0.34 && rand_num < 0.67
      expect("tacocat".roshambo()).to(eq("paper"))
    else
      expect("tacocat".roshambo()).to(eq("scissors"))
    end
  end

end
