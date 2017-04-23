require('minitest/autorun')
require('minitest/emoji')
require_relative('../songs.rb')


class TestSongs < Minitest::Test

  def setup
    @song1 = Songs.new("Eye of the Tiger", "Survivor")
    @song2 = Songs.new("Song 2", "Blur")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen")
    @song4 = Songs.new("Kiss From A Rose", "Seal")
    
  end

  def test_can_create_song
    assert_equal(Songs, @song1.class())
  end

  def test_song_has_title
    assert_equal("Song 2", @song2.song_title)
  end

  def test_song_has_artist
    assert_equal("Seal", @song4.artist)
  end

end