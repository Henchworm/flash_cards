class Round
  attr_reader :deck,
              :correct_counter,
              :incorrect_counter,
              :turns,
              :string,
              :cards
  def initialize(deck)
    @deck = deck
    @turns = []
    @correct_counter = 0
    @incorrect_counter = 0
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    @turns << Turn.new(guess, current_card)
    @turns.rotate(1)
    require "pry"; binding.pry
  end

  def number_correct
    @turns.each do |turn|
      if turn.card.answer == turn.string
        @correct_counter += 1
      end
    end
  end


  def number_incorrect
    @turns.each do |turn|
      if turn.card.answer != turn.string
        @incorrect_counter += 1
      end
    end
  end

  def number_correct_by_category()

  end

  def percent_correct_by_category()

  end

end

