class Author

attr_accessor :name


def initialize(name)
@name = name

end

def posts
Post.all.select {|post| post.author == self}
end

def add_post(post)
post.author = self
end

def add_post_by_title (title)
post = Post.new(title)
post.author = self
end

def self.post_count
  counter = []
Song.all.each {|song| counter << post.author != nil  }
counter.length
end


end
