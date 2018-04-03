require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Zambizi", 10 )
  end

  def test_name()
    assert_equal("Zambizi", @river.name)
  end

  def test_number_of_fish
    assert_equal(10, @river.number_of_fish)
  end

end
