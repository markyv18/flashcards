class Round
  attr_reader :deck, :guesses, :number_correct, :number_incorrect

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @number_incorrect = 0
  end

  def record_guess(guess, card)
    guess = Guess.new(guess, card)
    @guesses << guess
    if guess.correct?
      @number_correct += 1
    else
      @number_incorrect += 1
    end
    guess
  end

  def current_card
      deck.cards.shift
  end

  def percent_correct
    100 * (@number_correct.to_f / @guesses.count)
  end


end
