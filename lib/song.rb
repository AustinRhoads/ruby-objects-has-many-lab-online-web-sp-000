class Song
attr_accessor :name, :artist, :genre

@@all = []

def initialize (name, genre = nil)
@name = name
@genre = genre
save
end

def save
@@all << self
end

def artist=(artist)
@artist = artist
Artist.all_artist_songs << self
end

def artist_name
self.artist.name
end



def self.all
  @@all
end

end
