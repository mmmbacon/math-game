class Game
  attr_accessor :player_1
  attr_accessor :player_2

  def initialize
    @player_1 = Player.new()
    @player_2 = Player.new()
    @current_player = 0
    @running = false
    @round = 1
  end

  def reset
    @player1.lives = 0
    @player2.lives = 0
    @game_questions = @game_questions.shuffle
    self.start
  end

  def start
    @running = true
    self.game_loop
  end

  def game_loop
    
    while @running == true do
      question = Question.new()
      @current_player = @round % 2 === 0 ? 1 : 0
      puts "Player " + @current_player.to_s + ": " + question.question_string
      gets.chomp()
      @round += 1
      #evaluate()
      #if players lives have not dropped to zero...
      #puts #result
      #else.... 
      #@running = false
    end
    #Player loses..  play again?... reset
    #if input = quit then exit
  end

end