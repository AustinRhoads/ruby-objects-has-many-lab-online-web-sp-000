class Artist
attr_accessor :name
@@all = []
@@all_artist_songs = []
def initialize (name)
@name = name
@@all << self
end

def all_artist_songs
@@all_artist_songs
end

def add_song(song)
song.artist = self

end

def add_song_by_name (name, genre = nil)
song = Song.new(name)
add_song(song)

end

def songs
  Song.all.select {|song| song.artist == self}
end

def self.song_count

end


end
