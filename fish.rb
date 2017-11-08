class Fish
 attr_reader :fish_name

  def initialize(fish_name)
    @fish_name = fish_name
  end

  def fish_name
    return @fish_name
  end

  def get_fish
    @fish_stock.pop
  end

end
