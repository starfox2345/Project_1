class Sandwich
    attr_accessor :servings, :dairyfree, :readyInMinutes
    @@all =  []

    def initialize(servings, dairyfree, readyInMinutes)
        @servings = servings
        @dairyfree = dairyfree
        @readyInMinutes = readyInMinutes
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end

end