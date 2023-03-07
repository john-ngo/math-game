class Player
  attr_reader :lives

  def initialize id
    @id = id
    @lives = 3
  end

  def lost_live
    @lives -= 1
  end

  def print_player
    "Player #{@id}"
  end

  def score
    "P#{@id}: #{@lives}/3"
  end

  def win
    puts
    puts "Player #{@id} wins with a score of #{@lives}/3"
  end
end