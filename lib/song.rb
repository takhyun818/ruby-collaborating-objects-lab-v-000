
class Song
    attr_accessor :artist, :name

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        song = self.new(file_name)
        song.name = file_name.split(" - ")[1]
        name = file_name.split(" - ")[0]
        song.artist_name=(name)
        song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end
end
