require './lib/activity'

RSpec.describe Activity do
  it 'exists' do
    activity = Activity.new("Brunch")

    expect(activity).to be_a(Activity)
  end

  it 'has a name' do
    activity = Activity.new("Brunch")

    expect(activity.name).to eq("Brunch")
  end
end