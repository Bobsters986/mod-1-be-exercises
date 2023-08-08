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

    activity.add_participant("Luther", 40)

    expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
  end

  it 'can calculate total cost' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    activity.add_participant("Luther", 40)

    expect(activity.total_cost).to eq(60)
  end

  it 'can split the cost' do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    activity.add_participant("Luther", 40)

    expect(activity.total_cost).to eq(60)
    expect(activity.split).to eq(30)
  end
end