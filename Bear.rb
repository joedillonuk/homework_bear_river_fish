class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


def stomach_count
  @stomach.count
end

def eat_fish(fish)
  @stomach.push(fish)
end


def roar(bear, river, eaten)
return "#{bear.name} the #{bear.type} bear ROARS at the edge of the river #{river.name} having eaten #{eaten} fish. The river's #{river.fish_count} remaining fish escaped"
end

end
