require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'

class CardGenerator
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def cards
    cards_data = File.open(filename)
    read_cards_data = cards_data.readlines.map(&:chomp)
    new_card = []
    read_cards_data.each do |line|
      line.split(",")
      line.to_array
      require "pry"; binding.pry
    end
  end
end