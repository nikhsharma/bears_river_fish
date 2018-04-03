class River


  attr_reader :name, :array_of_fish

  def initialize(name, array_of_fish)
    @name = name
    @array_of_fish = array_of_fish
  end

def fish_eaten(fish)
@array_of_fish.delete(fish)
end

def fish_count()
  @array_of_fish.count
end

end
