require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'
require './lib/CardGenerator'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
start = Round.new(deck).start_message
start

