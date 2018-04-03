require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Zambizi", 10 )
    @fish = Fish.new("Nemo")
    @fish2 = Fish.new("Nemee")
    @fish3 = Fish.new("Nemoo")
    @fishes = [@fish, @fish2, @fish3]

  end

  def test_name()
    assert_equal("Zambizi", @river.name)
  end

  def test_number_of_fish
    assert_equal(10, @river.number_of_fish)
  end

  def test_fish_eaten()
    @river.fish_eaten
    assert_equal(9, @river.number_of_fish)
  end



end
