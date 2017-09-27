class River

    def initialize(name, fish)
        @name = name
        @fish = fish
    end

    def list_fish()
        return @fish
    end

    def count_fish()
        @fish.length()
    end

    def remove_fish(fish)
        @fish.delete(fish)
        return @fish
    end
end
#Class end
