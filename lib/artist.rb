class Artist
   attr_accessor :name
   @@all = []

   def initialize(name)
      self.name = name
      self.class.all << self
   end

   def self.all
      @@all
   end

   def new_song(name, genre)
      new_song = Song.new(name)
      new_song.genre = genre
      new_song.artist = self
      new_song
   end

   def songs
      Song.all.select { |song| song.artist == self}
   end

   def genres
      self.songs.map {|song| song.genre}
   end

end