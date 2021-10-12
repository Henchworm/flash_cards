require './lib/turn'
require './lib/card'

RSpec.describe Turn do

  it "exists" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn).to be_a(Turn)
    expect(card).to be_a(Card)
  end

  it "returns the guess" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.guess).to eq("Juneau")
  end

  it "returns the card" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.card).to eq(card)
  end

  it "correct?" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.correct?).to be(true)
    turn_1 = Turn.new("Fresno", card)
    card_1 = Card.new("What is the Capitol of California?", "Sacramento", :Geography)
    expect(turn_1.correct?).to be(false)
  end

  it "feedback" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.feedback).to eq("Correct!")
    card_1 = Card.new("What is the Capitol of California?", "Sacramento", :Geography)
    turn_1 = Turn.new("Fresno", card)
    require "pry"; binding.pry
    expect(turn_1.feedback).to eq("Incorrect!")
  end

end




