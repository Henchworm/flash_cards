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
    @turns << Turn.new(guess, current_card)
    @turns.rotate!(1)
    @turns.last
  end

  def number_correct
    turns.count do |turn|
      turn.correct?
    end
  end


  def number_correct_by_category()

  end

  def percent_correct_by_category()

  end

end

