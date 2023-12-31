class Reunion

  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_event_cost
    @activities.sum { |activity| activity.total_cost }
  end

  def breakout
    breakout = Hash.new(0)

    @activities.each do |activity|
      activity.owed.each do |name, owed|
        breakout[name] += owed
      end
    end
    breakout
  end

  def summary
    breakout.map do |k, v|
      "#{k}: #{v}"
    end.join("\n")
  end
end