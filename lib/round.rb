class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def record_guess(guess)
    @guesses << guess
  end

  def current_card
    for 
      deck.cards[0]
  end

  def feedback
    if correct?
      "Correct!"
    else
      "wrong answer, try again please"
    end
  end

  def number_correct

  end

end
