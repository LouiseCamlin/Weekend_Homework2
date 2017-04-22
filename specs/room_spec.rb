require('minitest/autorun')
require('minitest/emoji')
require_relative('../room.rb')
require_relative('../customer.rb')
require_relative('../songs.rb')

class TestRoom < Minitest::Test

  def setup 
    @customer1 = Customer.new("Chris", 20)
    @customer2 = Customer.new("Mary", 50)
    @customer3 = Customer.new("Paddy", 100)

    #customers = [@customer1, @customer2, @customer3]

    @song1 = Songs.new("Eye of the Tiger")
    @song2 = Songs.new("Song 2")
    @song3 = Songs.new("Bohemian Rhapsody")
    @song4 = Songs.new("Kiss From A Rose")

    @playlist = @song1, @song2, @song3

    
    @room2 = Room.new([], @playlist)

  end

  def test_room_is_empty
    assert_equal(0, @room2.number_of_customers)
  end

  def test_add_customers_to_room
    @room2.add_customers_to_room(@customer3)
    assert_equal(1, @room2.customers.size)
  end

  def test_remove_customers
    @room2.add_customers_to_room(@customer1)
    @room2.add_customers_to_room(@customer2)
    @room2.add_customers_to_room(@customer3)
    @room2.remove_customers(@customer3)
    assert_equal(2, @room2.customers.size)
  end

  def test_add_song_to_room
    @room2.add_song_to_room(@song4)
    assert_equal(4, @room2.songs.size)
  end


  


end