require('rspec')
require('roshambo')

describe('String#roshambo') do
  it('generates a random number between zero and one') do
    expect(roshambo()).to be > 0
    expect(roshambo()).to be < 1
  end
end
