require 'pry'
class Song
    attr_accessor :artist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save 
        @@all << self
    end
    
    def self.all
        @@all
    end

    def artist_name
        name = self.artist
            if name.nil? == true 
                return nil
            end
        name.name
    end
    

end