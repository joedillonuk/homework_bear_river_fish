require('minitest/autorun')
require('minitest/reporters')
require_relative('../Fish.rb')
require_relative('../Bear.rb')
require_relative('../River.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestFish < MiniTest::Test
  def setup()
    @fish1 = Fish.new("Cheep Cheep")
  end

def test_get_fish_name
  assert_equal("Cheep Cheep", @fish1.name)
end



end
