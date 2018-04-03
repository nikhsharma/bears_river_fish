require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Yogi", [])
  @fish = Fish.new("Nemo")
end

def test_name
  assert_equal("Yogi", @bear.name)
end

def test_stomach
  assert_equal([], @bear.stomach)
end

def test_eats_fish
  @bear.eats_fish(@fish)
  assert_equal(["Nemo"], @bear.stomach)
end

end
