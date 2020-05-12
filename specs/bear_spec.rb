require('minitest/autorun')
require('minitest/reporters')
require_relative('../Bear.rb')
require_relative('../Fish.rb')
require_relative('../River.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBear < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Kuma", "Fighter")
    @bear2 = Bear.new("Teddiursa", "Pokemon")
    @bear3 = Bear.new("Monokuma", "Danganronpa")
    @bear4 = Bear.new("Banjo", "Jiggybear")
  end

def test_get_bear_name
  assert_equal("Kuma", @bear1.name)
end









end
