require 'pry'

class Trade

  attr_reader :name, :cparty, :value

  def initialize(name, cparty, value)
    @name = name
    @cparty = cparty
    @value = value
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.highest_name_balance
    highest_trade = all[0]
    all.each do |trade|
      if trade.value.abs > highest_trade.value.abs
        highest_trade = trade
      end
    end
    p highest_trade.name
  end

end

trade = Trade.new("Tom", "GS", 1000)
trade = Trade.new("Bob", "MS", -500)
trade = Trade.new("Tom", "GS", -200)
trade = Trade.new("Joe", "GS", -1100)
trade = Trade.new("Bob", "MS", 700)

Trade.all
Trade.highest_name_balance

#The ObjectSpace module contains a number of routines that interact 
# with the garbage collection facility and allow you to traverse all 
# living objects with an iterator.