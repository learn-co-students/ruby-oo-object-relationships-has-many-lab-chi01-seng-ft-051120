require 'pry'
# class Artist
#     attr_accessor :name, :songs

#     @@song_count = 0

#     def initialize(name)
#         @name = name 
#         @songs = []
#     end 

#     def add_song(song)  
#         @songs << song 
#         song.artist = self
#         @@song_count += 1
#         #binding.pry
#     end 

#     def add_song_by_name(name)
#         song = Song.new(name)
#         @songs << song
#         song.artist = self 
#         @@song_count += 1
#         #binding.pry
#     end 

#     def songs
#         @@song_count << @songs
#     end 

#     def self.song_count
#         @@song_count
#     end 
# end 


class Artist

    attr_accessor :name

    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self 
    end

    #  artist = Artist.new("Prince")
    #  p artist.songs
    

    def self.all
        @@all 
    end 

    def add_song(song)
      #name = Song.new(name)
      song.artist = self
      #@@all << self  
      #@name << name 
      #@@song_count += 1
      #binding.pry
    end

    def songs 
        array_of_songs = []
        Song.all.select do |song_instance|
            song_instance.name == self
            array_of_songs << song_instance
        end
    end
  
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      song.artist = self 
      #binding.pry 
    end
  
    def self.song_count
      Song.all.count 
    end

  
end