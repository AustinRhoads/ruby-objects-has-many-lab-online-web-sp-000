class Artist
attr_accessor :name
@@all = []
@@all_artist_songs = []
def initialize (name)
@name = name
@@all << self
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
@@all.each {|artist| @@all_artist_songs << artist.songs }
@@all_artist_songs.length
end


end
