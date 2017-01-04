require "minitest/autorun"
require "minitest/pride"
require "./lib/guess.rb"
require "./lib/flashcard"

class GuessTest < Minitest::Test

  def test_guess_integration_with_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.card.answer
    assert_equal "Juneau", guess.response
    assert_equal true, guess.correct?
    assert_equal "Correct!", guess.feedback
  end
  
  def test_incorrect_guess
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal false, guess.correct?
    assert_equal "wrong answer, try again please", guess.feedback
  end

end
