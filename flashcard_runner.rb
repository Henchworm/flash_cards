require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'
require './lib/CardGenerator'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards
# card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
# card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
# card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
# card_4 = Card.new("Who is the australian rapper known for hot chocolate?", "RAED", :Pop_Culture)
deck = Deck.new(cards)

start = Round.new(deck).start_message
start

