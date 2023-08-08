class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, paid)
    @participants[name] = paid
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.count
  end

  def owed
    @participants.transform_values { |paid| split - paid }

    # @participants.each_with_object({}) do |(name, paid), owed|
    #   owed[name] = split - paid
    # end

    # @participants.reduce({}) do |owed, (name, paid)|
    #   owed[name] = split - paid
    #   owed
    # end
  end
end