class Round
  attr_reader :deck,
              :turns,
              :cards,
              :categories
  def initialize(deck)
    @deck = deck
    @turns = []
    @card_counter = 0
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    @card_counter += 1
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
    number_correct_by_category(category)/ category_count.to_f * 100
  end

  def start_message
    @card_counter += 1
    puts "Welcome! You're playing with #{deck.cards.count} cards."
    puts "-------------------------------------------------"
       until deck.cards.count == @card_counter -1
         puts "This is card number #{@card_counter} out of #{deck.cards.count}."
         puts "Question: #{current_card.question}"
         self.take_turn(gets.chomp.strip)
         puts self.turns.last.feedback
       end
     end_message
  end

  def category_message
    categories = []
    self.deck.cards.each do |card|
      categories << card.category
    end
      categories.uniq.each do |category|
        puts "#{category.to_s[1..-1].gsub('_', " ")} -- #{percent_correct_by_category(category).round}% correct"
      end
  end

  def end_message
    puts "******* GAME OVER!!! *******"
    puts "You had #{number_correct} guesses out of #{turns.count} for a total score of #{percent_correct.to_i} %."
    category_message
  end
end



