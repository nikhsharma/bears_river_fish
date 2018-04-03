class Bear

attr_reader :name, :stomach

def initialize(name, stomach)
@name = name
@stomach = stomach
end


def eats_fish(fish)
  stomach.push(fish.name)
end


end
