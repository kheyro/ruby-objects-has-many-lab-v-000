class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    @@song_count += 1 | @@song_count = 0
    new_song = Song.new(song)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    @@song_count
  end
end
