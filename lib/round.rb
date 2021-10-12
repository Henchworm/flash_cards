class Round
  attr_reader :deck,
              :number_correct,
              :number_incorrect,
              :turns,
              :string,
              :cards
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_incorrect = 0
    @string = deck.cards
    @cards = deck.cards
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    @turns << Turn.new(string, cards)
    require "pry"; binding.pry
    if guess == cards.answer #enumerable
      @number_correct += 1
    elsif guess != cards.answer
      @number_incorrect += 1
    end
  end


end

