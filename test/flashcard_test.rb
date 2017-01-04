require "minitest/autorun"
require "minitest/pride"
require "./lib/flashcard.rb"
require "./lib/deck.rb"
require "./lib/round.rb"
require "./lib/guess.rb"


class CardTest < Minitest::Test

  def test_flashcards_exist
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal Card, card.class
    assert_equal "Juneau", card.answer
    assert_equal "What is the capital of Alaska?", card.question

    card1 = Card.new("What is the capital of Missouri?", "Jefferson City")
    assert_equal "What is the capital of Missouri?", card1.question
  end

  def test_storing_cards_in_a_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
    assert_equal 3, deck.count
  end

  def test_round_catchment
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
    assert_equal [], round.guesses
  end

  def test_round1
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    guess = Guess.new("Juneau", card_1)
    round = Round.new(deck)
    assert_equal card_1, round.current_card
    assert_equal ["Juneau"], round.record_guess(guess.response)
    assert_equal 1, round.guesses.count
    assert_equal true, guess.correct?
    assert_equal "Correct!", round.guesses.first.feedback

  end

  def test_round2
    skip
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal 1, round.number_correct
    # assert_equal ______, round.current_card
    # => #<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">
    #
    # assert_equal _______, round.record_guess("2")
    # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">, @response="2">
    # assert_equal 2, round.guesses.count
    # assert_equal "wrong answer, try again please", round.guesses.last.feedback
    # assert_equal 1, round.number_correct
    # assert_equal 50, round.percent_correct
  end


end
