# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer
  def initialize(input_question, input_answer)
    @question = input_question
    @answer = input_answer
  end
end

class Deck
  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answer|
      @cards << Card.new(question, answer)
      @cards.shuffle
    end
  end
  def remaining_cards
    @cards.length
  end
  def draw_card
    @cards.pop
  end
end


trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

# trivia_data = [
# {
#   question: "blah blah blah",
#   choices: ["blah, blah, blah, blah"],
#   answer: 0,
#   },
# {},
# {}]

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end


