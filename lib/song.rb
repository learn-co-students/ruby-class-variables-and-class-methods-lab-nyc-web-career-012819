class Song

attr_accessor :name, :artist, :genre

@@count = 0

@@artists = []

@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
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
ghash = {}
count = 1
@@genres.each do |i|
  if ghash.keys.include?(i)
    ghash.each do |gen,num|
      if gen == i
        ghash[gen] += 1
      end
    end
  else
    ghash[i] = count
  end
  end
  ghash
end

def self.artist_count
ahash = {}
count = 1
@@artists.each do |i|
  if ahash.keys.include?(i)
    ahash.each do |gen,num|
      if gen == i
        ahash[gen] += 1
      end
    end
  else
    ahash[i] = count
  end
  end
  ahash
end

end
