class River

  attr_reader :name
  attr_accessor :fish

  def initialize(name)
    @name = name
    @fish = []
  end

def fish_count
  @fish.count
end

def remove_fish(fish)
  @fish.delete(fish)
end

end
