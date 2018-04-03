require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup()

    @fish = Fish.new("Nemo")
    @fish2 = Fish.new("Nemee")
    @fish3 = Fish.new("Nemoo")
    @array_of_fish = [@fish, @fish2, @fish3]
    @river = River.new("Zambizi", @array_of_fish )
  end
  
  def test_name()
    assert_equal("Zambizi", @river.name)
  end

  def test_number_of_fish
    assert_equal(@array_of_fish, @river.array_of_fish)
  end

  def test_fish_eaten()
    @river.fish_eaten(@fish3)
    assert_equal([@fish, @fish2], @river.array_of_fish)
  end

  def test_fish_count()
    assert_equal(3, @river.fish_count)
  end

end
