class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @index = 0
    # @guesses.count = 0 not sure about this one...
  end

  def current_card
    @deck.cards[@index]
  end

  def record_guess(input)
    guess = Guess.new(input, current_card)
    @guesses << guess
    @index += 1
    guess
  end

  def count
    @guesses.count
  end

  def number_correct
    counter = 0
    guesses.each do |guess|
      counter += 1 if guess.correct?
    end
    counter
  end

  def percent_correct
    (number_correct.to_f / guesses.count.to_f)*100
  end

  


end
