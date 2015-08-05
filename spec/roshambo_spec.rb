require('rspec')
require('roshambo')

describe('String#roshambo') do
  it('generates a random number between zero and one') do
    expect("tacocat".roshambo()).to be > 0
    expect("tacocat".roshambo()).to be < 1
  end
  
end
