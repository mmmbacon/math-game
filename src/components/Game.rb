class Game
  attr_accessor :player_1
  attr_accessor :player_2

  def initialize
    @player_1 = Player.new()
    @player_2 = Player.new()
    @current_player = 0
    @running = false
    @game_questions = [
      Question.new("What is 3 + 2?", 5),
      Question.new("What is 2 + 2?", 4),
      Question.new("What is 9 + 9?", 18),
      Question.new("What is 1 + 1?", 2),
      Question.new("What is 1 + 9?", 10),
      Question.new("What is 7 + 4?", 11),
      Question.new("What is 6 + 5?", 11)
    ]
  end

  def reset
    @player1.lives = 0
    @player2.lives = 0
    @game_questions = @game_questions.shuffle
    self.start
  end

  def start
    @running = true
    game_loop
  end

  def game_loop
    while running is true do
      puts #Question here
    gets.chomp()
    #evaluate()
    #if players lives have not dropped to zero...
    puts #result
    #else.... 
    #@running = false
    #You lose..  play again?... reset
    #if input = quit then exit
    end
  end

end