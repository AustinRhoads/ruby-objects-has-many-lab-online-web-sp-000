class Author

attr_accessor :name


def initialize(name)
@name = name

end

def posts
Post.select {|post| post.author == self}
end


end
