require('minitest/autorun')
require('minitest/reporters')
require_relative('../River.rb')
require_relative('../Bear.rb')
require_relative('../Fish.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRiver < MiniTest::Test
  def setup()
@river1 = River.new("White Cart Water")
  end

def test_get_river_name
  assert_equal("White Cart Water", @river1.name)
end





end
