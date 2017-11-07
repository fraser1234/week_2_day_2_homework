class Bear

  attr_reader :bear_name, :bear_stomach

  def initialize(bear_name)
    @bear_name  = bear_name
    @bear_stomach = []
  end

  def bear_name
    return @bear_name
  end

  def add_fish (fish)
     return @bear_stomach << fish
  end




end
