class Genre

attr_accessor :name
@@all=[]
    def initialize(name)
        @name = name
        @@all<<self
        
    end


#class methods:::

def self.all
@@all    
end


#::::::::::::::::::::::::::::

def songs
    Song.all.select do |song_instance|
        song_instance.genre == self
    end
    
end



def artists
    songs.map do |song|
        song.artist
    end 
    
end












end