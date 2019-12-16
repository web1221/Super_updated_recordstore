require('album')
require('rspec')



describe('.#Album') do

  before(:each) do
    @album1 = Album.new("Blue")
    @album2 = Album.new("Red")
  end

  describe('.all') do
    it(('returns an empty array when there are no albums')) do
      expect(Album.all).to(eq([]))
    end
  end

end
