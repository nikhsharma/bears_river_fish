class River

  attr_reader :name, :number_of_fish

  def initialize(name, number_of_fish)
    @name = name
    @number_of_fish = number_of_fish
  end

def fish_eaten()
 @number_of_fish -= 1
end

end
