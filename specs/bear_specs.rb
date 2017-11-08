require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class TestBear < MiniTest::Test

  def setup
    @fish1 = Fish.new("Clive")
    @fish2 = Fish.new("Simon")

    @bear = Bear.new("Yogi")

    @river = River.new("Amazon", [@fish1, @fish2])
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_add_fish_stomach
    @bear.add_fish_stomach(@river)
    assert_equal(1, @bear.bear_stomach.count)
    assert_equal(1, @river.river_fish_stock.count )
  end





end
