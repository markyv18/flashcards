require_relative 'runner'

class FlashcardRunner
  attr_accessor :runner

  def initialize
    runner = Runner.new
    # require "pry"; binding.pry
    runner.start
  end

end

FlashcardRunner.new
