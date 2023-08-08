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

  it 'starts with an empty activities array' do
    reunion = Reunion.new("1406 BE")

    expect(reunion.activities).to eq([])
  end

  it 'can add activities' do
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")

    reunion.add_activity(activity_1)

    expect(reunion.activities).to eq([activity_1])
  end
end