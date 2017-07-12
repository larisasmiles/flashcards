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
      #explicit return
    return "Correct!" if correct?
       #guardclaus
    return "Incorrect!" if !correct?
  end

end
