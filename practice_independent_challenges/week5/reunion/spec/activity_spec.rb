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

  it 'starts with an empty participants hash' do
    activity = Activity.new("Brunch")

    expect(activity.participants).to eq({})
  end

  it 'can add participants' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)

    expect(activity.participants).to eq({"Maria" => 20})
  end
end