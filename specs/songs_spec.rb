require('minitest/autorun')
require('minitest/emoji')
# require_relative('../room.rb')
# require_relative('../customer.rb')
require_relative('../songs.rb')

class TestSongs < Minitest::Test

  def setup
    @song1 = Songs.new("Eye of the Tiger")
    @song2 = Songs.new("Song 2")
    @song3 = Songs.new("Jump")
    @song4 = Songs.new("Bohemian Rhapsody")
    @song5 = Songs.new("Kiss From A Rose")
    
  end

 def test_can_create_song
  assert_equal(Songs, @song.class())
 end

 






end