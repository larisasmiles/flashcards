class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    # @guesses.count = 0 not sure about this one...
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(input)
    guess = Guess.new(input, current_card)
    @guesses << guess
    guess
  end

  def count
    record_guess
    @guesses.count
  end

  def feedback
    record_guess
    count 
    @guesses.first
  end
end
