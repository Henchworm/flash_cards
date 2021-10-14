class Round
  attr_reader :deck,
              :turns,
              :string,
              :cards
  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    @deck.cards.rotate!
    new_turn
    require "pry"; binding.pry
  end

  def number_correct
    turns.count do |turn|
      turn.correct?
    end
  end



  def percent_correct_by_category(category)

  end

end

