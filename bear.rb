class Bear

attr_reader :name, :stomach

def initialize(name, stomach)
@name = name
@stomach = stomach
end


def eats_fish(fish, river)
  stomach.push(fish)
  river.fish_eaten()
end

def roar
  return "ROAR!"
end

end
