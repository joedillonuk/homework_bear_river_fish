require('minitest/autorun')
require('minitest/reporters')
require_relative('../Bear.rb')
require_relative('../Fish.rb')
require_relative('../River.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBear < MiniTest::Test

  def setup()

    # bears
    @bear1 = Bear.new("Kuma", "Tekken")
    @bear2 = Bear.new("Teddiursa", "Pokemon")
    @bear3 = Bear.new("Monokuma", "Danganronpa")
    @bear4 = Bear.new("Banjo", "Jiggy")

    # fish
    @fish1 = Fish.new("Cheep Cheep")
    @fish2 = Fish.new("James Pond")
    @fish3 = Fish.new("Clanker")
    @fish4 = Fish.new("Enguarde")
    @fish5 = Fish.new("Big Bertha")

    # river
    @river1 = River.new("Moon")

    @river1.fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

  end

  def test_get_bear_name
    assert_equal("Kuma", @bear1.name)
  end

  def test_check_bear_fish_stomach_count
    assert_equal(0, @bear1.stomach_count)
  end

  def test_bear_eat_fish

    fish_eaten = @fish1
    # choose a fish to get from river
    # test bear and river's current fish count
    assert_equal(0,@bear1.stomach_count)
    assert_equal(5,@river1.fish_count)
    # remove fish from river and give to bear
    @river1.remove_fish(fish_eaten)
    @bear1.eat_fish(fish_eaten)
    # check the counts updated
    assert_equal(1,@bear1.stomach_count)
    assert_equal(4, @river1.fish_count)
  end

  def test_roar
    # arrange data for test by eating a few fish
    @river1.remove_fish(@fish1)
    @bear1.eat_fish(@fish1)
    @river1.remove_fish(@fish2)
    @bear1.eat_fish(@fish3)
    @river1.remove_fish(@fish3)
    @bear1.eat_fish(@fish3)


    eaten = @bear1.stomach_count

    assert_equal("Kuma the Tekken bear ROARS at the edge of the river Moon having eaten 3 fish. The river's 2 remaining fish escaped", @bear1.roar(@bear1, @river1, eaten))
  end

end
