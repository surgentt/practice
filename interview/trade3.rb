require 'pry'

class Trade
  extend Enumerable
  attr_reader :name, :cparty, :value

  def initialize(name, cparty, value)
    @name = name
    @cparty = cparty
    @value = value
  end

  def self.each
    ObjectSpace.each_object(self) do |t| yield t end
  end

  def self.highest_name_balance
    self.max_by{ |trade| trade.value.abs }.name
  end

end

trade = Trade.new("Tom", "GS", 100)
trade = Trade.new("Bob", "MS", -500)
trade = Trade.new("Tom", "GS", -200)
trade = Trade.new("Joe", "GS", -1100)
trade = Trade.new("Bob", "MS", 700)

p Trade.highest_name_balance

