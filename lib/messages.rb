class Messages

  def welcome_message
    p "Welcome! You're playing with 4 cards."
  end

  def question1
    p "This is card number 1 out of 4."
    p "Question: What is 5 + 5?"
  end

  def question2
    p "This is card number 2 out of 4."
    p "Question: What is Rachel's favorite animal?"
  end

  def question3
    p "This is card number 3 out of 4."
    p "What is Mike's middle name?"
  end

  def question4
    p "This is card number 4 out of 4."
    p "What cardboard cutout lives at Turing?"
  end

  def exit_message
    p "****** Game over! ******"
    p "You had #{} correct guesses out of 4 for a score of #{}%."
  end

end
