class Bear

  attr_reader :name, :bear_stomach

  def initialize(name)
    @name  = name
    @bear_stomach = []
  end

  def bear_name
    return @name
  end

  def add_fish_stomach(river)
    fish = river.get_fish()
    @bear_stomach << fish if !fish.nil?
  end



end
