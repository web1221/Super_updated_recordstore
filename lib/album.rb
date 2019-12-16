class Album

@@albums = {}

attr_accessor :name

def initialize(name)
  @name = name
end

def self.all()
  @@albums.values
end

def ==(other_album)
  self.name.eql?(other_album.name)
end

end
