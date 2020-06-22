require_relative 'apply_rule.rb'
# rules class
class RulesGame
  # rules game
  def self.game_rules(turn, counter_frame)
    if counter_frame < 9
      gamebowling(turn)
    else
      (turn[0] + turn[1] + turn[2])
    end
  end

  # Gamebowling
  def self.gamebowling(turn)
    rul = ApplyRule.new
    if turn[0] == 10
      rul.strike(turn[2], turn[3], turn[4])
    else
      rul.spare(turn[0], turn[1], turn[2])
    end
  end
end
