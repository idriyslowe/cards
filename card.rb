# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

class Card
  attr_reader :question, :answer
  attr_accessor :check

  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answer|
      @question = question
      @answer = answer
      @cards << [question, answer]
    end
  end
end

