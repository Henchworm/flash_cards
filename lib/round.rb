class Round
  attr_reader :deck,
              :turns,
              :number_correct
              :number_incorrect
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_incorrect = 0
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    # @turns << turn
    if guess.correct? == true
      @number_correct += 1
    elsif guess.correct? == false
      @number_incorrect += 1
    end
    current_card.shift
  end


end

