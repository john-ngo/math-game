require './game'
require './player'

game = Game.new
player1 = Player.new(1)
player2 = Player.new(2)

while game.status
  if game.turn
    game.question(player1.print_player)
    result = gets.chomp

    if result.to_i == game.sum
      game.correct(player1.print_player)
    else
      game.wrong(player1.print_player)
      player1.lost_live
    end
  else
    game.question(player2.print_player)
    result = gets.chomp

    if result.to_i == game.sum
      game.correct(player2.print_player)
    else
      game.wrong(player2.print_player)
      player2.lost_live
    end
  end

  game.score(player1.score, player2.score)
  
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
