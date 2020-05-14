class Author
    attr_accessor :name 

    @@post_count = 0

    def initialize(name)
        @name = name 
        @posts = []
    end 

    def add_post(post)
        @posts << post 
        post.author = self 
        @@post_count += 1
    end 

    def add_post_by_title(name)
        new_post = Post.new(name)
        added_post = add_post(new_post)
        @@post_count += 1
    end

    def posts
        Post.all.select {|post| post.author == self}
    end 

    def self.post_count 
        @@post_count 
    end 
end 