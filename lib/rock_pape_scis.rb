require "rock_pape_scis/version"

module RockPapeScis
  def self.play(players)
    # {:player_1 =>  {:move, :id}}
    # {:player_2 => {:move, :id}}

    if players[:player_1][:move] == players[:player_2][:move]
      -1
    elsif (players[:player_1][:move] == 'rock' && players[:player_2][:move] == 'scissors') || 
          (players[:player_1][:move] == 'paper' && players[:player_2][:move] == 'rock') ||
          (players[:player_1][:move] == 'scissors' && players[:player_2][:move] == 'paper')
      players[:player_1][:id]
    else
      players[:player_2][:id]
    end
    
  end # end of play

end
