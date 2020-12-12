require 'pry'

class MusicImporter
  attr_reader :path
  
  def initialize(path)
    @path = path
  end 
  
  def path 
    @path 
  end 
  
  def files 
    Dir.glob("#{path}/*.mp3").map do |file|
      file.gsub("#{path}/", "")
    end
  end 
  
  def import 
    files.each {|f| Song.create_from_filename(f)}
  end 
  
end 