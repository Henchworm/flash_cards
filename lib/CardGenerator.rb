require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'

class CardGenerator
  attr_reader :filename,
              :cards
  def initialize(filename)
    @filename = filename

  end

  def cards
    cards_data = File.open(filename)
    read_cards_data = cards_data.readlines.map(&:chomp)
    new_cards = []
    read_cards_data.each do |line|
        card_array = line.split(/, /)
        question = card_array[0]
        answer = card_array[1]
        category = card_array[2]
        new_cards << Card.new(question, answer, category)
      end
      new_cards
  end


end