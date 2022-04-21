require('rspec')
require('Allergies')

describe('Allergies#score') do
  it('returns an array of allergies based on input') do
    allergy = Allergies.new(32)
    expect(allergy.score).to(eq(['chocolate']))
  end

  it('returns an array of all allergies based on input') do
    allergy = Allergies.new(22)
    expect(allergy.score).to(eq(['peanuts', 'shellfish', 'tomatoes']))
  end
end
