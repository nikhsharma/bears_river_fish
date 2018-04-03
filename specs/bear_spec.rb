require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", [])
    @fish = Fish.new("Nemo")
    @fish2 = Fish.new("Nemee")
    @fish3 = Fish.new("Nemoo")
    @array_of_fishes = [@fish, @fish2, @fish3]
    @river = River.new("Zambizi", @array_of_fishes )
  end

  def test_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_stomach()
    assert_equal([], @bear.stomach)
  end

  def test_eats_fish()
    @bear.eats_fish(@fish, @river)
    assert_equal(1, @bear.stomach.count)
  end

  def test_eats_fish__removed_from_river()
    @bear.eats_fish(@fish2, @river)
    assert_equal([@fish, @fish3], @river.array_of_fish)
  end

  def test_roar()
    assert_equal("ROAR!", @bear.roar)
  end

  def test_food_count()
    @bear.eats_fish(@fish, @river)
    assert_equal(1, @bear.food_count)
  end

end
