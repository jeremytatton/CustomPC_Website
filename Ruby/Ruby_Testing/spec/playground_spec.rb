require_relative '../lib/playground'

RSpec.describe "#Hola" do
it 'greets a person with their name' do
  expect(hola('Jeremy')).to eq('Hello, Jeremy!')
end
end
