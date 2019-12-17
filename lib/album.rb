class Album

  @@albums = {}
  @@total_rows = 0

  attr_reader :id, :name

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@albums.values
  end

  def save()
    @@albums[self.id] = Album.new(self.name, self.id)
  end

  def ==(other_album)
    self.name.eql?(other_album.name)
  end

  def self.clear
    @@albums = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@albums[id]
  end

  def update(name)
    @name = name
  end

  def delete
    @@albums.delete(self.id)
  end

  def self.sorted()
    Album.all.sort_by { |album| album.name }
  end

  def self.search(query)
    Album.all.select { |album| album.name.match?(/(#{query})/i)}

  end

end
