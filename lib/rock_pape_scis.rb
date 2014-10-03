require "rock_pape_scis/version"

module RockPapeScis
  def self.play(player_1, player_2)

    if player_1[:move] == player_2[:move]
      -1
    elsif (player_1[:move] == 'rock' && player_2[:move] == 'scissors') || 
          (player_1[:move] == 'paper' && player_2[:move] == 'rock') ||
          (player_1[:move] == 'scissors' && player_2[:move] == 'paper')
      player_1[:id]
    else
      player_2[:id]
    end
    
  end # end of play

end
