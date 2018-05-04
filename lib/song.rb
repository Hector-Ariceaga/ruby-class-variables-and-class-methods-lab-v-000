class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_count = {}
    
    @@genres.collect do |genre|
      if genre_count.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = genre
        genre_count[genre] = 0
      end
    end
        
  end
  
  def self.artist_count
  
  end
end