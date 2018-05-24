require_relative '../lib/fighter'

RSpec.describe Fighter do
  it '.new creates a new fighter' do
    expect(Fighter.new(name:'Carl', health: 100, power:30)).to be_an_instance_of (Fighter)
  end

  it "returns the fighter's name with a #name" do
    expect(Fighter.new(name: 'Ryu', health: 90, power:45).name).to eql ('Ryu')
  end

end
