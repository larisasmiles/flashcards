class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
     @response == @card.answer
  end

  def feedback
      "Correct!" if correct? #guardclaus
      "Incorrect!" if !correct?
  end

end
