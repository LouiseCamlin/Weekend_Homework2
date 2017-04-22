class Room

  attr_reader :customers
  attr_accessor :songs

  def initialize(customers, songs)
    @customers = []
    @songs = songs

  end

  def number_of_customers()
    @customers.size
  end

  def add_customers_to_room(new_customer)
    @customers.push(new_customer)
  end

  def remove_customers(leaving_customer)
    @customers.delete(leaving_customer)
  end

  def add_song_to_room(new_song)
    @songs.push(new_song)
  end


end