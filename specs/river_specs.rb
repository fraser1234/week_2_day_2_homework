require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class TestRiver < MiniTest::Test

  def setup
    @river_name = "Clyde"
    @fish1 = Fish.new("Clive")
    @fish2 = Fish.new("Simon")
    @stock = [@fish1, @fish2]
    @river = River.new(@river_name, @stock )

  end

  def test_river_name
    assert_equal("Clyde", @river.name)
  end

  def test_river_fish_stock
    result = @stock
    assert_equal(result, @river.fish_stock)
  end

  # def test_lose_fish
  #       @.add_fish(@fish1)
  #       @.add_fish(@fish2)
  #       @.lose_fish(@fish1)
  #       assert_equal(1, @._count())
  # end


end
