require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class TestFish < MiniTest::Test

  def setup
    @river_name = "Clyde"
    @fish1 = Fish.new("Clive")
    @fish2 = Fish.new("Simon")
    @fish_name1 = "Clive"
    @fish_name2 = "Simon"
    @stock = [@fish1, @fish2]
    @river = River.new(@river_name, @stock )

  end

  def test_fish_name
    result = @fish
    assert_equal("Clive", @fish1.fish_name)
  end

end
