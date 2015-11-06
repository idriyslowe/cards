# require './card.rb'

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

class Deck
  attr_accessor :cards

def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answer|
      @cards << [question, answer]
      # p @cards
    end
  end

  def card
    @card = Card.new(trivia_data)
  end

  def remaining_cards
    remaining_cards = @cards.length
    puts remaining_cards 
  end

  def draw_card
    puts "#{@cards[0][0]}"
  end

  def 
    
  end

end

deck = Deck.new(trivia_data) # deck is an instance of the Deck class
deck.draw_card

# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end