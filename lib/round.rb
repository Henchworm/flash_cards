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
  end

  def number_correct
    turns.count do |turn|
      turn.correct?
    end
  end

  def number_correct_by_category(category)
      turns.count do |turn|
        turn.correct? && category == turn.card.category
      end
    end

  def percent_correct
    (number_correct / turns.count.to_f) * 100
  end

  def percent_correct_by_category(category)
    category_count = turns.count do |turn|
      turn.card.category == category
    end
    number_correct_by_category(category) / category_count * 100
    require "pry"; binding.pry
  end

end



