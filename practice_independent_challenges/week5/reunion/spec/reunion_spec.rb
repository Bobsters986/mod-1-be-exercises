require './lib/reunion'
require './lib/activity'

RSpec.describe Reunion do
  it 'exists' do
    reunion = Reunion.new("1406 BE")

    expect(reunion).to be_a(Reunion)
  end

  it 'has a name' do
    reunion = Reunion.new("1406 BE")

    expect(reunion.name).to eq("1406 BE")
  end
end