require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'

class CardGenerator
  attr_reader :filename,
              :cards
  def initialize(filename)
    @filename = filename
    @cards = []
  end

  def card_reader
    cards_data = File.open(filename)
    read_cards_data = cards_data.readlines.map(&:chomp)
    new_card = []
    read_cards_data.each do |line|
      card_array = line.split(/, /)
      question = card_array[0]
      answer = card_array[1]
      category = card_array[2]
    end
    @cards << Card.new(question, answer, category)
  end
end