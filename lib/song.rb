class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
      @@genre_count = {}
      @count = 0
      @count += 1
      @name = name
      @@count += 1
      @artist = artist
      @@artists << @artist
      @genre = genre
      @@genres << @genre
      @@artists_hash = {}
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
 end

 def self.genres
    @@genres.uniq

 end

def self.genre_count
  @@genres.each do |genre|
    if @@genre_count[genre]
       @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
   end
  @@genre_count = @@genre_count.sort_by { |key| key }.to_h
end

def self.artist_count
 @@artists.each do |artist|
  if @@artists_hash[artist]
     @@artists_hash[artist] += 1
  else
    @@artists_hash[artist] = 1
end
end
@@artists_hash = @@artists_hash.sort_by { |key| key }.to_h
end
end
