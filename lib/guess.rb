class Guess
  attr_reader :card, :response

  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    card.answer == response
  end

  def feedback
    if correct?
      "Correct!"
    else
      "wrong answer, try again please"
    end
  end

end
