require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Yogi", [])
end

def test_name
  assert_equal("Yogi", @bear.name)
end

def test_stomach
  assert_equal([], @bear.stomach)
end

end
