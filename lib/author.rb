require 'pry'
class Author
    attr_accessor :name

    @@posts = 0

    def initialize(name)
        @name = name 
        @post = []
    end 

    # def add_song(song)  
    #     self.songs << song 
    #     song.artist = self
    #     @@song_count += 1
    # end 

    # def add_song_by_name(name)
    #     song = Song.new(name)
    #     self.songs << song
    #     song.artist = self 
    #     @@song_count += 1
    # end 

    def posts
        Post.all.select do |post_instance|
            post_instance.author == self 
        end 
    end 

    # def songs 
    #     array_of_songs = []
    #     Song.all.select do |song_instance|
    #         song_instance.name == self
    #         array_of_songs << song_instance
    #     end
    # end

    def add_post(post)
        #self.post << post 
        post.author = self
        #@@posts += 1
        #binding.pry
    end 

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end 

    def self.post_count
        Post.all.count
    end 

    def self.posts
        @@posts
    end 
end 