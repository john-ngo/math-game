class Game
  attr_reader :status, :turn

  def initialize
    @status = true
    @numbers = [0, 0]
    @turn = true
  end

  def question(player)
    @numbers = [rand(1..10), rand(1..10)]
    puts "Player#{player.id}: What does #{@numbers[0]} plus #{@numbers[1]} equal?"
  end

  def sum
    @numbers[0] + @numbers[1]
  end

  def correct(player)
    puts "Player#{player.id}: YES! You are correct."
  end

  def wrong(player)
    puts "Player#{player.id}: Seriously? No!"
  end

  def score(player1, player2)
    puts "P#{player1.id}: #{player1.lives}/3 vs P#{player2.id}: #{player2.lives}/3"
  end

  def new_turn
    if @turn
      @turn = false
    else
      @turn = true
    end

    puts
    puts "----- NEW TURN -----"
  end

  def game_over
    @status = false
    puts
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end