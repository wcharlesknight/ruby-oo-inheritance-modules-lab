class Song
  attr_accessor :name
  attr_reader :artist

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  include Paramable

  @@songs = []

  def initialize
    @@songs << self
  end


  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
