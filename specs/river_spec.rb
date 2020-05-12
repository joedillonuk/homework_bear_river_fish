require('minitest/autorun')
require('minitest/reporters')
require_relative('../River.rb')
require_relative('../Bear.rb')
require_relative('../Fish.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRiver < MiniTest::Test
  def setup()
    # bears
    @bear1 = Bear.new("Kuma", "Fighter")
    @bear2 = Bear.new("Teddiursa", "Pokemon")
    @bear3 = Bear.new("Monokuma", "Danganronpa")
    @bear4 = Bear.new("Banjo", "Jiggybear")

    # fish
    @fish1 = Fish.new("Cheep Cheep")
    @fish2 = Fish.new("James Pond")
    @fish3 = Fish.new("Clanker")
    @fish4 = Fish.new("Enguarde")
    @fish5 = Fish.new("Big Bertha")

    # river
    @river1 = River.new("White Cart Water")

    @river1.fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

  end

def test_get_river_name
  assert_equal("White Cart Water", @river1.name)
end

def test_fish_count
  assert_equal(5, @river1.fish_count)
end

def test_remove_fish
  @river1.remove_fish(@fish1)
  assert_equal(4, @river1.fish_count)
end




end
