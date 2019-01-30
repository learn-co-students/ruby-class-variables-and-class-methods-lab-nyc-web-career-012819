require "pry"

class Song

attr_accessor :name, :genre, :artist

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists.push(artist)
  @@genres.push(genre)
end

def self.count
  @@count
end

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  count = {}
  @@genres.each do |gen|
    count[gen] = 0
  end
  @@genres.each do |gen2|
    count[gen2] += 1
  end
  count
end

def self.artist_count
  count = {}
  @@artists.each do |art|
    count[art] = 0
  end
  @@artists.each do |art2|
    count[art2] += 1
  end
  count
end



end
