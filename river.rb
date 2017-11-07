class River

  attr_reader :name, :fish_stock

  def initialize(name, fish_stock)
    @name = name
    @fish_stock = fish_stock
  end

  def river_fish_stock
    return @stock.fish_stock
  end

  # def lose_fish(fish)
  #   index = @stock.index(fish)
  #   @stock.slice!(index, 1)
  # end

end
