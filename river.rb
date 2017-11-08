class River

  attr_reader :name, :fish_stock

  def initialize(name, fish_stock)
    @name = name
    @fish_stock = fish_stock
  end

  def river_fish_stock
    return @fish_stock
  end

  def get_fish
    @fish_stock.pop
  end


end
