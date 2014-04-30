require 'pry'

class Trade

  attr_reader :name, :cparty, :value

  Trades = []

  def initialize(name, cparty, value)
    @name = name
    @cparty = cparty
    @value = value
    Trades << self
  end

  def self.return_all
    p Trades
  end

  def self.highest_name_balance
    highest_trade = Trades[0]
    Trades.each do |trade|
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
trade = Trade.new("Bob", "MS", 700)
trade = Trade.new("Joe", "GS", -1100)

Trade.return_all
Trade.highest_name_balance