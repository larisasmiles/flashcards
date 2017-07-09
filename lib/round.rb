class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(input)
    guess = Guess.new(input, current_card)
    @guesses << guess
    guess 
  end
end
