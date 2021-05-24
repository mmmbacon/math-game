class Game
  attr_accessor :player_1
  attr_accessor :player_2

  def initialize
    @initialized = true
    @players = []
    @players[0] = Player.new(3)
    @players[1] = Player.new(3)
    @current_player = 0
    @other_player = 1
    @running = false
    @round = 1
  end

  def reset
    players.each { |player| player.reset }
    self.start
  end

  def start
    puts ""
    puts "Welcome to the math tots training ground!"
    @running = true
    self.game_loop
  end

  def generate_scores(player1, player2)
    "P1: #{player1.lives}/#{player1.max_lives}"\
    " vs P2: #{player2.lives}/#{player2.max_lives}"\
  end

  def game_loop
    
    while @running == true do
      question = Question.new()
      @current_player = @round % 2 === 0 ? 1 : 0
      @other_player = @round % 2 === 0 ? 0 : 1
      puts "Round #{@round}... Begin!"
      puts "Player #{@current_player + 1}: #{question.question_string} "
      answer = gets.chomp

      #Compare answer
      if(!question.compare_answer(answer))
        puts "Seriously? No!"
        @players[@current_player].lose_life
      end

      #Check to see if anyone has lost the game
      if(@players[@current_player].lives == 0)
        @running = false
        break
      end

      #Generate score and start new round
      puts generate_scores(@players[0], @players[1])
      @round += 1
      puts "--- NEW TURN ---"
    end

    puts "Player #{@other_player + 1} wins with a score of #{@players[@other_player].lives}/#{@players[@other_player].max_lives}"
    
    while @initialized
      puts "Play Again? Y/N"
      input = gets.chomp
      if(input.downcase == "y")
        self.start
      elsif(input.downcase == "n")
        @initialized = false
        break
      else 
        puts "Not a valid input. Please try again."
      end
    end

    exit

  end

end