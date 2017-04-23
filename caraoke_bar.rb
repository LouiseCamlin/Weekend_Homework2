class CCCaraokeBar

  attr_reader :name, :entry_fee
  

  def initialize(name, entry_fee)
    @name = name
    @entry_fee = entry_fee
  end

  def can_afford_entry(customer)
    customer.funds >= @entry_fee
  end

end