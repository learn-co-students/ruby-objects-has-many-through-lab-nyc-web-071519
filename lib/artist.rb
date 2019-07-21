class Artist
    
attr_accessor :name

    @@all =[]

    def initialize(name)

        @name = name

        @@all<<self
        
    end




# Class methods::::::::::::::


def self.all
    @@all
    
end


#::::::::::::::::::::::::


def new_song(name, genre)
    Song.new(name, self, genre)
    
end



def songs
    Song.all.select do |song_instance|
        song_instance.artist==self
    end
    
end


def genres
    songs.map do |song|
        song.genre
    end
    
end

















end