class Bear

    def initialize(name, stomach)
        @name = name
        @stomach = stomach
    end

    def eat_fish(fish)
        @stomach.push(fish)
        # @river.delete(fish)
        return @stomach
    end

    def catch_fish(river, fish)
        river.remove_fish(fish)
    end

end
#Class end
