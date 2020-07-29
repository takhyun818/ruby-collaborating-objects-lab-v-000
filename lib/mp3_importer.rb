class MP3Importer
  attr_accessor :directory

  def initialize(directory)
    @directory = directory
  end

  def files
      Dir.entries(path).select do |file|
          file.end_with?(".mp3")
      end
  end

  def import
      self.files.each do |file_name|
          Song.new_by_filename(file_name)
      end

  end
end
