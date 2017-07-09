require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_if_it_has_a_question
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert "What is the capital of Alaska?", card.question
  end

  def test_if_the_question_has_an_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert "Juneau", card.answer
  end

  
end
