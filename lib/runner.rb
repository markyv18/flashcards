require "./lib/messages"
require "./lib/flashcard.rb"
require "./lib/deck.rb"
require "./lib/round.rb"
require "./lib/guess.rb"


class Runner
  attr_accessor :message, :round, :card_1, :card_2, :card_3, :card_4, :question

    def initialize
      @message = Messages.new
      build_the_deck
    end

    def build_the_deck
      @card_1 = Card.new("Question: What is 5 + 5?", "10")
      @card_2 = Card.new("Question: What is Rachel's favorite animal?", "red panda")
      @card_3 = Card.new("What is Mike's middle name?", "nobody knows")
      @card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Beiber")
      deck = Deck.new([card_1, card_2, card_3, card_4 ])
      @round = Round.new(deck)
    end

    def start
      message.welcome_message
      round.deck.cards.count do |q|
        p round.deck.cards[q].question
        gets.chomp.to_s
      end
    end

    def q1
      message.question1
      guess_one = gets.chomp.to_s
      @round.record_guess(guess_one, @card_1)
    end

    def q2
      message.question2
      guess_two = gets.chomp
      @round.record_guess(guess_two, @card_2)
    end

    def q3
      message.question3
      guess_three = gets.chomp
      @round.record_guess(guess_three, @card_3)
    end

    def q4
      message.question4
      guess_four = gets.chomp
      @round.record_guess(guess_four, @card_4)
    end

end
