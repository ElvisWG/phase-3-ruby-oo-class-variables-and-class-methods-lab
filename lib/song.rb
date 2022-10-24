require 'pry'
class Song
  
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artist = []
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}
    

    def initialize(name, artist, genre)
       @name = name
       @artist = artist
       @genre = genre
       @@genres << genre
       @@artists << artist
       @@count +=1
       
    end

    #returns total number of songs created
    def self.count
        @@count
    end

    #returns array of all genres of existing songs
    def self.genres
        @@genres.uniq
end

#returns all artists with the existing songs
def self.artists
    @@artists.uniq
end

#returns hash of all existing genres of songs and the count
def self.genre_count
    @@genre_count = @@genres.tally
end

def self.artist_count
    # Iterates through array of artisits and counts each artist
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end




