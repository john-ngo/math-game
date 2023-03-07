class Player
  attr_reader :lives, :id

  def initialize id
    @id = id
    @lives = 3
  end

  def lost_live
    @lives -= 1
  end

  def win
    puts
    puts "Player #{@id} wins with a score of #{@lives}/3"
  end
end