require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'

class FlashCardsTest < Minitest::Test

  def test_if_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    card.question

    assert_equal "Juneau", card.question
  end
end
