require './game'
require './player'

game = Game.new
player1 = Player.new(1)
player2 = Player.new(2)

while game.status
  if game.turn
    game.question(player1)
    result = gets.chomp

    if result.to_i == game.sum
      game.correct(player1)
    else
      game.wrong(player1)
      player1.lost_live
    end
  else
    game.question(player2)
    result = gets.chomp

    if result.to_i == game.sum
      game.correct(player2)
    else
      game.wrong(player2)
      player2.lost_live
    end
  end

  game.score(player1, player2)
  
  if player1.lives == 0
    player2.win
    game.game_over
  elsif player2.lives == 0
    player1.win
    game.game_over
  else
    game.new_turn
  end
end
