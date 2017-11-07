require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class TestBear < MiniTest::Test

  def setup
    @river_name = "Clyde"
    @fish1 = Fish.new("Clive")
    @fish2 = Fish.new("Simon")
    @bear_name = Bear.new("Yogi")
    @bear = Bear.new(@bear_name)
    @bear_stomach = []
    @fish_name = "Clive"
    @fish_name2 = "Simon"
    @stock = [@fish1, @fish2]
    @river = River.new(@river_name, @stock )
  end

  def test_bear_name
    assert_equal("Yogi", @bear_name.bear_name)
  end

  def test_add_fish_stomach()
    @bear_stomach = []
    @bear.add_fish(@fish2)
    result = 1
    assert_equal(result, @bear_stomach.count(@fish2))
  end
  # ➜  homework_day_2 ruby specs/bear_specs.rb
  # Run options: --seed 48053
  #
  # # Running:
  #
  # F.
  #
  # Finished in 0.000993s, 2014.0985 runs/s, 2014.0985 assertions/s.
  #
  #   1) Failure:
  # TestBear#test_add_fish_stomach [specs/bear_specs.rb:30]:
  # Expected: 1
  #   Actual: 0
  #
  # 2 runs, 2 assertions, 1 failures, 0 errors, 0 skips




end
